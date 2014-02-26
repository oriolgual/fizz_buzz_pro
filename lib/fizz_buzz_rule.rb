class FizzBuzzRule
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def applies?
    FizzRule.new(number).applies? && BuzzRule.new(number).applies?
  end

  def result
    'FizzBuzz'
  end
end

