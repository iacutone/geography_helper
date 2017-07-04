# GeographyHelper

One source of truth for countries both states and provinces. I built this because it is easy to get into the habit of putting an array of arrays of states and countries into `application.rb`. This gem also uses hashes instead of nested arrays, making it easier to call values from a key. This approach is more efficient than looping through an array of arrays to find a correct state or country value. It is also easier to understand, for example, calling `state['NY'] => 'New York'`.

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

call `GeographyHelper::States.new.states` for a hash of nested states

call `GeographyHelper::States.new.provinces` for a hash of nested provinces

call `GeographyHelper::Countries.new.countries` for a hash of countries

### The gem also provides two helper methods to render state/province and country dropdowns from a Rails select dropdown.

* `country_options_for_select`
* `state_options_for_select()` 
  - this method takes an optional selected argument, 'NY' 

``` ruby example.html.erb
<%= form.select :country, country_options_for_select, {include_blank: true} %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iacutone/geography_helper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

