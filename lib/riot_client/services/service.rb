require 'rest-client'

module RiotClient
  class Service

    attr_accessor :region

    def self.get(region, version, endpoint, params = {})
      url = "http://prod.api.pvp.net/api/lol/#{region}/v#{version}/#{endpoint}"
      params = params.merge!({ api_key: api_key })
      response = RestClient.get url, { params: params }
      JSON.parse(response)
    end

    private

    def self.api_key
      RiotClient.configuration.api_key
    end
  end
end
