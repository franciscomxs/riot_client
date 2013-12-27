require 'pry'
require 'vcr'
require 'webmock'
require 'json'
require 'riot_client'

require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
  minimum_coverage(90)
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.around(:each) do |example|
    VCR.use_cassette(example.metadata[:full_description]) do
      example.run
    end
  end
end

RSpec::Matchers.define :be_a_list_of do |expected|
  match do |actual|
    actual.all? { |item| item.is_a?(expected) }
  end
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.filter_sensitive_data('API_KEY') { ENV['API_KEY'] }
end

RiotClient.configure do |config|
  config.api_key = ENV['API_KEY']
end
