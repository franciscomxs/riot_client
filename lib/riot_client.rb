require "riot_client/version"
require "riot_client/configuration"

require 'riot_client/services/service'
require "riot_client/services/champion_service"

require 'riot_client/models/base_model'
require 'riot_client/models/champion'

module RiotClient
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    def champions(region = 'na', version = '1.1', params = {})
      RiotClient::ChampionService.new(region, version, params).all
    end
  end
end