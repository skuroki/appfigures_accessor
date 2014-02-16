# AppfiguresAccessor

Accesses appfigures.com through API(v2.0)
see also http://docs.appfigures.com/

Most accessors are not implemented yet. Please fork and add your needs ;)

## Installation

Add this line to your application's Gemfile:

    gem 'appfigures_accessor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install appfigures_accessor

## Usage

In advance, you need to register API Client on https://appfigures.com/developers/keys

    > a = AppfiguresAccessor::Accessor.new('example@example', 'PASSWORD', 'CLIENT_KEY')
    > a.sales
    => {"downloads"=>0,
    "updates"=>0,
    "returns"=>0,
    "net_downloads"=>0,
    "promos"=>0,
    "revenue"=>"0.0",
    "edu_downloads"=>0,
    "gifts"=>0,
    "gift_redemptions"=>0}

## Contributing

1. Fork it ( http://github.com/<my-github-username>/appfigures_accessor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
