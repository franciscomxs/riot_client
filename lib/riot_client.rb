require "riot_client/version"
require "riot_client/configuration"

module RiotClient
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end