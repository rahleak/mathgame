require './Question'

class Answer
  attr_reader :game_response

  def initialize(guess, number1, number2)
    if guess == [number1, number2].sum
      @game_response = 'correct!'
    else 
      @game_response = 'wrong!'
    end
  end
end