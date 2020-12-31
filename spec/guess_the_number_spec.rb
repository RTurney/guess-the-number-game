#rspec for the guess the number ruby game
require 'guess_the_number'

describe 'Guess the number game' do 
    
  context "Number to guess function" do 
      
    it "should return a random number between 1 and 20" do 
        expect(number_to_guess).to be_between(1,20).inclusive
    end
  end
  
  context "Introduction function" do 
    
    it "should print an introduction" do
      expect(print_introduction).to eq "Hello, what is your name?"
    end
    
    it "should respond with your name when given" do 
      expect{receive_name('Richard')}.to output(/Welcome Richard can you guess the number?/).to_stdout  
    end
  end
  
  context "check number function to return valid integer when given a number or return 'Thats not a number' otherwise" do 
    
    it "should return 1 when given '1' as string" do 
      expect(check_num("1")).to eq 1
    end
    
    it "should return 10 when given '10' as string" do 
      expect(check_num('10')).to eq 10 
    end
    
    it "should return 'thats not a valid number' when given an invalid a non-integer as string" do
      expect(check_num('two')).to eq "That's not a valid number"
    end
  end
  
  context "function to check if number is higher or lower than guessed number" do 
  
    it "should return 'thats not a valid number' when given an invalid input" do 
      expect(check_guess('two', 10)).to eq "That's not a valid number"
    end
    
    it "should return 'Congrats that is correct' if the number is correct" do 
      expect(check_guess('10', 10)).to eq 'Correct!'
    end
    
    it "should return 'higher' if the guessed number is lower than the number-to-guess" do
      expect(check_guess('5', 10)).to eq 'Higher'
    end
  
    it "should return 'lower' if the guessed number is higher than the number-to-guess" do 
      expect(check_guess('15', 10)).to eq 'Lower'
    end
  end

  
  context "running test example to understand stubbing user input" do 
    it "should return the users name" do 
      Object.any_instance.stub(gets: 'Richard')
      expect(input_test).to eq "Richard"
    end
  end
end