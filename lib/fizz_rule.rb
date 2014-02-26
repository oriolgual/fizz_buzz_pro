class FizzRule
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def applies?
    (number % 3) == 0
  end

  def result
    'Fizz'
  end
end
