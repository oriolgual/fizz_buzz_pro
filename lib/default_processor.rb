class DefaultProcessor
  attr_reader :result, :number

  def initialize(result, number)
    @result = result
    @number = number
  end

  def applies?
    true
  end

  def process
    result
  end
end
