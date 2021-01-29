# frozen_string_literal: true

# Player class for keeping an instance of the player name
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
