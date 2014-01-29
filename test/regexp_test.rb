require 'minitest/autorun'
require 'rack/emoji'

class RegexpTest < Minitest::Test

  SIMPLE = <<-EOS
    <!doctype html>
    <html>
    <head></head>
    <body>
    </body>
    </html>
  EOS

   ATTRIBUTE = <<-EOS
    <!doctype html>
    <html>
    <head></head>
    <body class="ringo">
    </body>
    </html>
  EOS

  def test_simple_regexp
    assert_match Rack::Emoji::HTML_REGEXP, SIMPLE
  end

  def test_attribute_regexp
    assert_match Rack::Emoji::HTML_REGEXP, ATTRIBUTE
  end

end
