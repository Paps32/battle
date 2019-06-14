require 'player'

describe Player do
  subject(:player_1) { Player.new('Papya') }
  subject(:player_2) { Player.new('Dracula') }

  describe '#name' do
  it 'player returns name' do
    expect(player_1.name).to eq 'Papya'
  end
end

describe '#hit_points' do
  it 'returns hit points' do
    expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe '#attack' do
  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    player_1.attack(player_2)
  end
end

describe '#receive_damage' do
  it 'reduces the player hit points' do
    expect { player_1.receive_damage }.to change { player_1.hit_points }.by(-10)
  end
end
end
