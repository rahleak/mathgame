class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def getPlayerScore
    @score
  end

  def losePoint
    @score -= 1
  end

end