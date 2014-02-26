class FizzBuzz
  def initialize(limit)
    @limit = limit
  end

  def fizz_buzz
    1.upto(@limit).map do |number|
      FizzBuzzer.new(number).to_fizz_buzz
    end
  end
end
