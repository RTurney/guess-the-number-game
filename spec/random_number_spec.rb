# frozen_string_literal: true

require 'random_number'

describe RandomNumber do
  describe '.number_to_guess' do
    it 'should return a random number between 1 and 20' do
      expect(RandomNumber.number_to_guess).to be_between(1, 20).inclusive
    end
  end
end
