require 'game'

RSpec.describe Game do 
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player1 }
  let(:player_2) { double :player2 }

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
  
  describe 'player_1' do
    it 'retrives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe 'player_2' do
    it 'retrives the second player' do
      expect(game.player_2).to eq player_2
    end
  end
  
  describe 'current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe 'switch turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe 'opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

end