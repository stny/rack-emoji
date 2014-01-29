require 'sinatra'
require 'rack/emoji'

use Rack::Emoji, :width => 50, :height => 50

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  erb :index
end

__END__

@@layout
<!DOCTYPE html>
<html>
<head>
  <title>Rack::Emoji Example :100:</title>
  <meta charset="utf-8">
</head>
<body>
<%= yield %>
</body>
</html>

@@index
<p>:dog:</p>
