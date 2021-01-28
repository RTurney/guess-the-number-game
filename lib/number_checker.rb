# class for checking numbers
class NumberChecker

  def check_num(input)
    Integer(input) rescue "That's not a valid number"
  end

  def check_guess(user_input, num)
    user_input = check_num(user_input)
    if user_input == "That's not a valid number"
      return "That's not a valid number"
    elsif user_input == num
      return "Correct!"
    elsif user_input < num
      return "Higher"
    elsif user_input > num
      return "Lower"
    end
  end
end
