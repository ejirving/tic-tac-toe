require_relative "../lib/tic_tac_toe.rb"

puts "Welcome to tic tac toe"
puts "Player 1 (Xs): Enter your name"
name1 = gets.chomp
puts "Player 2 (Os): Enter your name"
name2 = gets.chomp 
player1 = TicTacToe::Player.new({ color: "X", name: name1 })
player2 = TicTacToe::Player.new({ color: "O", name: name2 })
players = [player1, player2]
TicTacToe::Game.new(players).play
while true
  puts "Play again? Y/n"
  input = gets.chomp
  if input.downcase == "y"
    TicTacToe::Game.new(players).play
  else
    break
  end
end
