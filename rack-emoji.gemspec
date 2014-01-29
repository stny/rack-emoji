# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/emoji/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-emoji"
  spec.version       = Rack::Emoji::VERSION
  spec.authors       = ["SATO Naoya"]
  spec.email         = ["s@tonaoya.com"]
  spec.summary       = "Rack middleware for emoji"
  spec.description   = "Easily setup emoji for use with rack app."
  spec.homepage      = "http://github.com/stny/rack-emoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"

  spec.add_dependency "gemoji", "~> 1.5"
end
