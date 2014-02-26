require 'spec_helper'
require 'fizz_buzzer'

describe FizzBuzzer do
  describe 'to_fizz_buzz' do
    context 'when is a multiple of 3' do
      it 'returns fizz' do
        expect(FizzBuzzer.new(3).to_fizz_buzz).to eq('Fizz')
        expect(FizzBuzzer.new(9).to_fizz_buzz).to eq('Fizz')
      end
    end

    context 'when is a multiple of 5' do
      it 'returns buzz' do
        expect(FizzBuzzer.new(5).to_fizz_buzz).to eq('Buzz')
        expect(FizzBuzzer.new(55).to_fizz_buzz).to eq('Buzz')
      end
    end

    context 'when is a a multiple of 5 and 3' do
      it 'returns FizzBuzz' do
        expect(FizzBuzzer.new(15).to_fizz_buzz).to eq('FizzBuzz')
        expect(FizzBuzzer.new(45).to_fizz_buzz).to eq('FizzBuzz')
      end
    end

    context 'when is a multiple of 13' do
      it 'returns meeek' do
        expect(FizzBuzzer.new(13).to_fizz_buzz).to eq('meeek')
        expect(FizzBuzzer.new(91).to_fizz_buzz).to eq('meeek')
      end
    end

    context 'when is a multiple of 3, 5 or 13' do
      context 'when it is an even number' do
        it 'returns the string reversed' do
          expect(FizzBuzzer.new(18).to_fizz_buzz).to eq('zziF')
          expect(FizzBuzzer.new(10).to_fizz_buzz).to eq('zzuB')
          expect(FizzBuzzer.new(30).to_fizz_buzz).to eq('zzuBzziF')
          expect(FizzBuzzer.new(26).to_fizz_buzz).to eq('keeem')
        end
      end
    end
  end
end
