class MeeekRule
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def applies?
    (number % 13) == 0
  end

  def result
    'meeek'
  end
end
