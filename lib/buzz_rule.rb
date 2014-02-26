class BuzzRule
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def applies?
    (number % 5) == 0
  end

  def result
    'Buzz'
  end
end
