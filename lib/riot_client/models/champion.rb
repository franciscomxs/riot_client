module RiotClient
  class Champion < BaseModel
    attr_accessor :id, :name, :active, :attack_rank, :defense_rank, :magic_rank, :difficulty_rank, :bot_enabled, :free_to_play, :bot_mm_enabled, :ranked_play_enabled
  end
end