require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      game = Game.new(player_1, player_2)
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe 'accepts two players' do
    it 'accepts player 1' do
      game = Game.new(player_1, player_2)
      expect(game.player_1).to eq player_1
    end
    it 'accepts player 2' do
      game = Game.new(player_1, player_2)
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

end
