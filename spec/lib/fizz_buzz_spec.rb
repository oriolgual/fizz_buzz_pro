require 'spec_helper'
require 'fizz_buzz'

describe FizzBuzz do
  let(:fizz_buzz) { FizzBuzz.new(100).fizz_buzz }

  describe 'fizz_buzz' do
    it 'returns an array with the numbers' do
      expect(fizz_buzz.length).to eq(100)
      expect(fizz_buzz[0]).to eq(1)
      expect(fizz_buzz[21]).to eq(22)
    end
  end
end
