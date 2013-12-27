require 'spec_helper'
require 'riot_client/models/base_model'
require 'riot_client/models/champion'

describe RiotClient::Champion do
  [:id, :name, :active, :attack_rank, :defense_rank, :magic_rank, :difficulty_rank, :bot_enabled, :free_to_play, :bot_mm_enabled, :ranked_play_enabled].each do |attr|
    it { should respond_to(attr) }
  end
end
