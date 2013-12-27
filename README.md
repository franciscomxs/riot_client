# RiotClient

A Ruby interface to Riot API that is available at http://developer.riotgames.com/api/methods

## Installation

Add this line to your application's Gemfile:

    gem 'riot_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install riot_client

Then create a initializer (config/initializers/riot_client.rb for rails projects):

    RiotClient.configure do |config|
      config.api_key = ENV["YOUR-API-KEY"]
    end

## Usage

    champions = RiotClient.champions

    champions.each do |champion|
      puts champion.id
      puts champion.name
      puts champion.active
      puts champion.attack_rank
      puts champion.defense_rank
      puts champion.magic_rank
      puts champion.difficulty_rank
      puts champion.bot_enabled
      puts champion.free_to_play
      puts champion.bot_mm_enabled
      puts champion.ranked_play_enabled
    end

Optionally you can change default parameters:

    RiotClient.champions(region = 'na', version = '1.1', params = {})

## TODO:
  - Complete all endpoints
  - Write more examples

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
