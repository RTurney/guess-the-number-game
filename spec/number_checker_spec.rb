require 'number_checker'

describe NumberChecker do

  describe ".check_user_input" do

    it "will return 1 when given '1' as string" do
      expect(subject.check_num("1")).to eq 1
    end

    it "will return 10 when given '10' as string" do
      expect(subject.check_num('10')).to eq 10
    end

    it "will return 'thats not a valid number' when given an invalid a non-integer" do
      expect(subject.check_num('two')).to eq "That's not a valid number"
    end
  end

  describe ".check guess" do

    it "will return 'thats not a valid number' when given an invalid input" do
      expect(subject.check_guess('two', 10)).to eq "That's not a valid number"
    end

    it "will return correct if the number is correct" do
      expect(subject.check_guess('10', 10)).to eq 'Correct!'
    end

    it "should return 'higher' if the guessed number is lower" do
      expect(subject.check_guess('5', 10)).to eq 'Higher'
    end

    it "should return 'lower' if the guessed number is higher" do
      expect(subject.check_guess('15', 10)).to eq 'Lower'
    end
  end
end
