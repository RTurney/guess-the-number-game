# frozen_string_literal: true

require 'player'

describe Player do
  describe '.name' do
    it 'will return the given name' do
      player = Player.new('David')
      expect(player.name).to eq 'David'
    end
  end
end
