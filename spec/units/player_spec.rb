# frozen_string_literal: true

require 'player'

describe Player do
  subject(:toby) { Player.new('Toby') }
  subject(:james) { Player.new('James') }

  describe '#name' do
    it 'returns the name' do
      expect(toby.name).to eq 'Toby'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(toby.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { toby.receive_damage }.to change { toby.hit_points }.by(-10)
    end
  end
end
