module RiotClient
  class ChampionService

    attr_accessor :region, :version

    def initialize(region = 'na', version = '1.1')
      @region = region
      @version = version
    end

    def all(version = "1.1")
      champions_hash.map do |data|
        Champion.new data
      end
    end

    private

    def champions_hash
      data = Service.get(region, version, "champion")
      data["champions"]
    end
  end
end