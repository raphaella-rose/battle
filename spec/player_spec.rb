require 'player'

RSpec.describe Player do
  it 'returns the players name' do
    player = Player.new('Raphaella')
    expect(player.name).to eq 'Raphaella'
  end
end