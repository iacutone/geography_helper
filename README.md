# GeographyHelper

GeographyHelper stores country, state and province data has Ruby hashes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geography_helper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geography_helper

## Usage

```ruby
GeographyHelper::States.new.states # hash of states
GeographyHelper::States.new.provinces # hash of provinces
GeographyHelper::Countries.new.countries # hash of countries

GeographyHelper::States.new.states['United States']['NY'] # => "New York"
```

### The gem also provides two helper methods to render state/province and country dropdowns from a Rails select dropdown.

```ruby
<%= form.select :country, country_options_for_select('US') %>
<%= form.select :state, state_options_for_select('NY') %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iacutone/geography_helper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

