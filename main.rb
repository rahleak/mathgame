require './Game'
require './Player'
require './Question'
require './Number'
require './Answer'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
game = Game.new(p1, p2)

question = Question.new
puts question.ask

guess = gets.chomp.to_i

puts question.answer

resp = Answer.new(guess, question.num1.number, question.num2.number)

puts question.num1.number + question.num2.number

puts resp.game_response

while p1.getPlayerScore != 0 || p2.getPlayerScore != 0

if resp.game_response == 'wrong!' && game.current_player == p1
  puts "P1: #{p1.losePoint}/3 points vs P2: #{p2.getPlayerScore}/3 points"
  puts "#{game.switch_players(p1, p2).name}'s turn!"
  question = Question.new
  puts question.ask
  guess = gets.chomp.to_i
  puts question.answer

end

if resp.game_response == 'correct!' && game.current_player == p1
  puts "P1: #{p1.getPlayerScore}/3 points vs P2: #{p2.getPlayerScore}/3 points"
  puts "#{game.switch_players(p1, p2).name}'s turn!"
  question = Question.new
  puts question.ask
  guess = gets.chomp.to_i
  puts question.answer

end

if resp.game_response == 'wrong!' && game.current_player == p2
  puts "P1: #{p1.getPlayerScore}/3 points vs P2: #{p2.losePoint}/3 points"
  puts "#{game.switch_players(p1, p2).name}'s turn!"
  question = Question.new
  puts question.ask
  guess = gets.chomp.to_i
  puts question.answer

end

if resp.game_response == 'correct!' && game.current_player == p2
  puts "P1: #{p1.getPlayerScore}/3 points vs P2: #{p2.getPlayerScore}/3 points"
  puts "#{game.switch_players(p1, p2).name}'s turn!"
  question = Question.new
  puts question.ask
  guess = gets.chomp.to_i
  puts question.answer

end

end

if p1.getPlayerScore == 0
  puts "Player 2 Wins"
end

if p2.getPlayerScore == 0
  puts "Player 1 Wins!"
end