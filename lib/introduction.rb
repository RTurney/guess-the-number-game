# Introduction class
class Introduction
  attr_reader :game_instructions
  def initialize
    @game_instructions = "Guess a number between 1-20"
  end

  def print_introduction
    "Hello, what is your name?"
  end

  def receive_player(name)
    player = Player.new(name)
    "Welcome #{player.name} can you guess the number?"
  end
end
