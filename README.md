# Rack::Emoji

Quickly and easily use emoji with rack based application

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'rack-emoji'
```

And then execute:

``` bash
$ bundle
```

Or install it yourself as:

```
$ gem install rack-emoji
```

## Usage

To get started, need a copy of emoji images.
Edit your Rakefile:

``` ruby
# Rakefile
load 'tasks/emoji.rake'
```

``` bash
$ rake emoji # copied to your public directory
```

Edit your rack application file as follows:

``` ruby
require 'rack/emoji'

use Rack::Emoji, :width => 50, :height => 50

# ...

run app
```

Just use emoji name.

```
# your.html/erb/haml...
:dog:
```

Please see the example directory :dog:

## Options

- dir (for emoji image directory)
- width
- height
- style
