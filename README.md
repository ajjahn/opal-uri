# Opal URI

It's like Ruby `URI`, but smaller. It provides minimal URI support that is absent from Opal.

[![Build Status](https://travis-ci.org/ajjahn/opal-uri.svg?branch=master)](https://travis-ci.org/ajjahn/opal-uri)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'opal-uri'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bowser

## Usage

Inside your Opal app:

```ruby
require 'uri'

uri = URI.parse("http://opalrb.com")
uri.scheme #=> "http"
uri.host #=> "opalrb.com"
```

## Contributing

This project is governed by a [Code of Conduct](CODE_OF_CONDUCT.md)

  1. Fork it
  1. Branch it
  1. Hack it
  1. Save it
  1. Commit it
  1. Push it
  1. Pull-request it
