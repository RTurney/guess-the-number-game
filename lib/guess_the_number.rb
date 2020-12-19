# Project for 'guess the number' exercise in inventyourowngamesinpython book. 

# functin to generate number to guess
def number_to_guess
  return rand(1..20)
end

def print_introduction
  return "Hello, what is your name?"
end 

def receive_name(name)
  return "Welcome #{name} can you guess the number?"
end

def check_num(input)
  Integer(input) rescue "That's not a valid number"
end

def check_guess(user_input, num)
  if user_input == num
    return "Correct!"
  end
end