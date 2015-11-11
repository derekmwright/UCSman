# Ucsman

A RubyGem that provides a Ruby interface to the Cisco UCS Manager platform. This gem is under development and pull requests are welcome.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ucsman'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ucsman

## Usage

Example Usage:

```ruby
irb(main):001:0> require 'ucsman'
=> true
irb(main):002:0> ucs = Ucsman::Client.new({ username: 'admin', password: '', hostname: '192.168.56.103', verify_ssl: false })
=> #<Ucsman::Client:0x000000044161b8 @username="admin", @password="", @hostname="192.168.56.103", @verify_ssl=true, @url="https://192.168.56.103/nuova">
irb(main):003:0> ucs.login
=> "1447246615/937d720f-0a93-400b-b339-8362cbce5a12"
irb(main):004:0> ucs.system
=> {:top_system=>{:address=>"192.168.56.103", :current_time=>"2015-11-11T12:56:58.886", :descr=>"", :dn=>"sys", :ipv6_addr=>"::", :mode=>"cluster", :name=>"UCSPE-192-168-56-103", :owner=>"", :site=>"", :system_up_time=>"01:23:54:46"}}
irb(main):005:0> ucs.logged_in?
=> true
irb(main):006:0> ucs.logout
=> true
irb(main):007:0> ucs.logged_in?
=> false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

For testing and development, having a instance of the UCS PE appliance running will be helpful.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ucsman.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

