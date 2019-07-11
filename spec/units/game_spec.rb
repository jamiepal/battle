# frozen_string_literal :true

require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:toby) { double :fake_player }
  let(:james) { double :fake_player }

  describe '#attack' do
    it 'damages the player' do
      expect(toby).to receive(:receive_damage)
      game.attack(toby)
    end
  end
end