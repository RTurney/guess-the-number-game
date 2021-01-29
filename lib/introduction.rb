# frozen_string_literal: true

# Introduction class
class Introduction
  def self.game_instructions
    'Guess a number between 1-20'
  end

  def self.print_introduction
    'Hello, what is your name?'
  end

  def self.receive_player(name)
    @player = Player.new(name)
    "Welcome #{@player.name} can you guess the number?"
  end

  def self.congratulate_player
    "Congratulations #{@player.name}, you have guessed the number"
  end
end
