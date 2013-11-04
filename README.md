# Sentry-Api

A gem for Sentry, which exhibits an API like interface.

## Installation

Add this line to your application's Gemfile:

    gem 'sentry-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentry-api

## Usage

    client = Sentry::Api.new('http://app.getsentry.com')
    client.login('email', 'password')
    client.status('sentry-api')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
