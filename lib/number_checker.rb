# frozen_string_literal: true

# class for checking numbers
class NumberChecker
  def self.check_guess(user_input, num)
    user_input = check_num(user_input)
    if user_input == "That's not a valid number"
      "That's not a valid number"
    elsif user_input == num
      'Correct!'
    elsif user_input < num
      'Higher'
    elsif user_input > num
      'Lower'
    end
  end

  def self.check_num(user_input)
    Integer(user_input)
  rescue StandardError
    "That's not a valid number"
  end
end
