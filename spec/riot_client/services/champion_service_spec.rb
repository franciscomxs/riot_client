require 'spec_helper'
require 'riot_client/services/champion_service'
require 'riot_client/models/champion'

describe RiotClient::ChampionService, :vcr do

  describe :champions do

    let!(:champions) { RiotClient::ChampionService.new("na").all }

    it { expect(champions).to have(117).items }
    it { expect(champions).to be_a_list_of(RiotClient::Champion) }
    it { expect(champions.first.id).to eq(266) }
    it { expect(champions.first.name).to eq("Aatrox") }
    it { expect(champions.first.active).to eq(true) }
    it { expect(champions.first.attack_rank).to eq(8) }
    it { expect(champions.first.defense_rank).to eq(4) }
    it { expect(champions.first.magic_rank).to eq(3) }
    it { expect(champions.first.difficulty_rank).to eq(6) }
    it { expect(champions.first.bot_enabled).to eq(false) }
    it { expect(champions.first.free_to_play).to eq(false) }
    it { expect(champions.first.bot_mm_enabled).to eq(false) }
    it { expect(champions.first.ranked_play_enabled).to eq(true) }

  end
end