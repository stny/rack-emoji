# Rack::Emoji

Quickly and easily use emoji with rack based application

## Installation

Add this line to your application's Gemfile:

    gem 'rack-emoji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-emoji

## Usage

Edit your rack application file as follows:

```
require 'rack/emoji'

use Rack::Emoji, :width => 50, :height => 50

...

run app
```

## Options

- dir (for emoji image directory)
- width
- height
- style

## Contributing

1. Fork it ( http://github.com/stny/rack-emoji/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
