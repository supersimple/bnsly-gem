# Bnsly

The bnsly gem is an API wrapper for the bnsly URL shortener. The service is in private beta and requires a token to be used. Contact the author to apply for a token.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bnsly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bnsly

## Usage

Available methods are `add/:url`, `add/:expiring_days/:url`, and `lookup/:guid`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bnsly. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

