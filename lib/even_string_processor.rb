class EvenStringProcessor
  attr_reader :result, :number

  def initialize(result, number)
    @result = result
    @number = number
  end

  def applies?
    result.is_a?(String) && number.even?
  end

  def process
    result.reverse
  end
end
