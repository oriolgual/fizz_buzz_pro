class DefaultRule
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def applies?
    true
  end

  def result
    number
  end
end
