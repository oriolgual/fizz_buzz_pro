require 'buzz_rule'
require 'default_rule'
require 'fizz_rule'
require 'fizz_buzz_rule'
require 'meeek_rule'

require 'default_processor'
require 'even_string_processor'
require 'odd_number_processor'

class FizzBuzzer
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_fizz_buzz
    processors.each do |processor_class|
      processor = processor_class.new(result, number)
      return processor.process if processor.applies?
    end
  end

  private
  def result
    selected_rule.new(number).result
  end

  def selected_rule
    rules.find do |rule|
      rule.new(number).applies?
    end
  end

  def rules
    [FizzBuzzRule, FizzRule, BuzzRule, MeeekRule, DefaultRule]
  end

  def processors
    [EvenStringProcessor, OddNumberProcessor, DefaultProcessor]
  end
end
