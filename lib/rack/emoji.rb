require "rack/emoji/version"
require 'gemoji'

module Rack
  class Emoji

    HTML_REGEXP = /(.*<body[^>]*>)(.*)(<\/body>.*)/m

    def initialize(app, options = {})
      @app = app
      @dir = options.fetch(:dir, "images/emoji")
      @height = options.fetch(:height, 20)
      @width = options.fetch(:width, 20)
      @style = options.fetch(:style, "vertical-align:middle;")
    end

    def call(env)
      status, headers, response = @app.call(env)

      if headers["Content-Type"] && headers["Content-Type"].include?("text/html")
        new_response = emojify(response)
        headers['Content-Length'] = new_response.bytesize.to_s
        [status, headers, [new_response]]
      else
        [status, headers, response]
      end
    end

    def emojify(response)
      response_str = ""
      response.each { |s| response_str << s }
      _, header, body, footer = response_str.match(HTML_REGEXP).to_a

      body = body.gsub(/:([a-z0-9\+\-_]+):/) do |match|
        if ::Emoji.names.include?($1)
          %Q{<img alt="#{$1}" src="#{@dir}/#{$1}.png" style="#{@style}" width="#{@width}" height="#{@height}" />}
        else
          match
        end
      end

      header + body + footer
    end

  end
end
