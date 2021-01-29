# frozen_string_literal: true

# Random number to guess class
class RandomNumber
  # functin to generate number to guess
  def self.number_to_guess
    rand(1..20)
  end
end
