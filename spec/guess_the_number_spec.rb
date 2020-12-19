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
  end
end