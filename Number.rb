class Number
  attr_reader :number

  def initialize(number)
    @number = number.to_i
  end
end