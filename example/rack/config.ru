require 'rack/emoji'

class Example
  HTML = <<-EOS
  <!doctype html>
  <html>
  <head></head>
  <body><p>:dog:</p></body>
  </html>
  EOS

  def self.call(env)
    [ 200,
      {"Content-Type" => "text/html"},
      [HTML]
    ]
  end
end

use Rack::Static, :urls => ["/images"], :root => "public"
use Rack::Emoji

run Example
