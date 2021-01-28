require 'introduction'
require 'player'

describe Introduction do
  describe '.print_introduction' do
    it 'will greet the player' do
      expect(subject.print_introduction).to eq "Hello, what is your name?"
    end
  end

  describe '.receive_player' do
    it 'return the players name in a statement' do
      expect(subject.receive_player('Rich')).to eq("Welcome Rich can you guess the number?")
    end
  end

  describe '.game_instructions' do
    instructions =  "Guess a number between 1-20"
    it 'will print the games instructions' do
      expect(subject.game_instructions).to eq instructions
    end
  end
end
