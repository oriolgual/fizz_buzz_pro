class OddNumberProcessor
  attr_reader :result, :number

  def initialize(result, number)
    @result = result
    @number = number
  end

  def applies?
    result.is_a?(Numeric) && number.odd?
  end

  def process
    result.to_s.reverse.to_i
  end
end
