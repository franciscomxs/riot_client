module RiotClient
  class ChampionService

    attr_accessor :region, :version, :endpoint, :params

    def initialize(region = 'na', version = '1.1', params = {})
      @region = region
      @version = version
      @params = params
      @endpoint = "champion"
    end

    def all(version = "1.1")
      champions_hash.map do |data|
        Champion.new data
      end
    end

    private

    def champions_hash
      data = Service.get(region, version, endpoint, params)
      data["champions"]
    end
  end
end