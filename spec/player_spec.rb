require 'player'

RSpec.describe Player do
  it 'returns the players name' do
    player = Player.new('Raphaella')
    expect(player.name).to eq 'Raphaella'
  end

  it 'returns players HP' do
    player = Player.new('Raphaella')
    expect(player.points).to eq 100
  end

  it 'reduces HP when player is attacked' do
    player = Player.new('Raphaella')
    player.receive_damage()
    expect(player.points).to eq 80
  end
end