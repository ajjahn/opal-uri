# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opal/uri/version'

Gem::Specification.new do |spec|
  spec.name          = "opal-uri"
  spec.version       = Opal::URI::VERSION
  spec.authors       = ["Jamie Gaskins", "Adam Jahn"]
  spec.email         = ["jgaskins@gmail.com"]

  spec.summary       = %q{Minimal URI support for Opal}
  spec.homepage      = "https://github.com/ajjahn/opal-uri"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "opal", ">= 0.7.0", "< 0.12.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "opal-rspec"
end
