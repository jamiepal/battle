# frozen_string_literal :true

require 'game'

describe Game do
  subject(:game) { described_class.new(toby, james) }
  let(:toby) { double :fake_player }
  let(:james) { double :fake_player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq toby
    end
  end
  
  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq james
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(toby).to receive(:receive_damage)
      game.attack(toby)
    end
  end
end