require './Player'
class Game
  attr_reader :current_player

  def initialize(player_one, player_two)
    @current_player = player_one
  end

  def switch_players(player_one, player_two)

    if @current_player == player_one
      @current_player = player_two

    else @current_player = player_one
    end
  end

end