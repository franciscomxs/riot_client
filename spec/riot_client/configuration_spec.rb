require 'spec_helper'
require 'riot_client/configuration'

describe RiotClient::Configuration do
  [:api_key, :region].each do |attr|
    it { should respond_to(attr) }
  end
end