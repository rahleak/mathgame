require './Game'
require './Player'
require './Number'

class Question

  attr_reader :ask, :num1, :num2, :answer
  # attr_accessor :ask, :num1, :num2, :answer

  def initialize
    @num1 = Number.new(rand(10))
    @num2 = Number.new(rand(10))
    @ask = "What does #{@num1.number} plus #{@num2.number} equal?"
    
  end

end