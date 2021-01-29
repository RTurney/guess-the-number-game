# frozen_string_literal: true

require 'introduction'
require 'player'

describe Introduction do
  describe '.print_introduction' do
    it 'will greet the player' do
      expect(Introduction.print_introduction).to eq 'Hello, what is your name?'
    end
  end

  describe '.receive_player' do
    it 'return the players name in a statement' do
      expect(Introduction.receive_player('Rich')).to eq('Welcome Rich can you guess the number?')
    end
  end

  describe '.game_instructions' do
    instructions = 'Guess a number between 1-20'
    it 'will print the games instructions' do
      expect(Introduction.game_instructions).to eq instructions
    end
  end
end
