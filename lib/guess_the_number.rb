# Project for 'guess the number' exercise in inventyourowngamesinpython book. 

# functin to generate number to guess
def number_to_guess
  return rand(1..20)
end

def print_introduction
  return "Hello, what is your name?"
end 

def receive_name(name)
  puts "Welcome #{name} can you guess the number?"
end

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

def input_test
  name = gets.chomp
  return name
end

def run_game
  puts print_introduction
  receive_name(gets.chomp)
  number = number_to_guess
  loop do 
    result = check_guess(gets.chomp, number)
    if result == 'Correct!'
      puts result
      puts "Game over"
      break
    else 
      puts result
    end
  end
end

# run_game