# frozen_string_literal: true

require_relative 'player'
require_relative 'number_checker'
require_relative 'random_number'
require_relative 'introduction'
# Project for 'guess the number' exercise in inventyourowngamesinpython book.
class GuessingGame
  GAME = true

  def run_game
    puts Introduction.print_introduction
    puts Introduction.receive_player(gets.chomp)
    puts Introduction.game_instructions

    number = RandomNumber.number_to_guess
    game_loop(number)
  end

  private #-----------------------

  def game_loop(number)
    while GAME == true
      user_guess = gets.chomp
      result = NumberChecker.check_guess(user_guess, number)
      puts result
      # game_breaker(result)
      break if result == 'Correct!'
    end
    puts Introduction.congratulate_player
  end
end
