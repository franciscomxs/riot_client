require 'spec_helper'
require 'riot_client'

describe RiotClient do
  describe :config do
    before do
      RiotClient.configure do |config|
        config.api_key = "ABC"
        config.region = "BR"
      end
    end

    let(:config) { RiotClient.configuration }

    it { expect(config.api_key).to eq("ABC") }
    it { expect(config.region).to eq("BR") }
  end
end