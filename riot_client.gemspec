# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'riot_client/version'

Gem::Specification.new do |spec|
  spec.name          = "riot_client"
  spec.version       = RiotClient::VERSION
  spec.authors       = ["Francisco Martins"]
  spec.email         = ["franciscomxs@gmail.com"]
  spec.description   = %q{A Ruby interface to Riot Games API}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/franciscomxs/riot_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "vcr", "~> 2.8.0"
  spec.add_development_dependency "pry", "~> 0.9.12.4"
  spec.add_development_dependency "webmock", "1.11.0"
  spec.add_development_dependency "simplecov", "0.7.1"

  spec.add_dependency "rest-client", "~> 1.6.7"
  spec.add_dependency "activesupport", "~> 4.0"
end
