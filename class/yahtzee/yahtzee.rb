require_relative 'game'
require 'pry'


quit = false

while !quit
  puts "Would you like to Start a game of Yahtzee? (yes or no)"
  confirm = gets.chomp
  if confirm == "yes"
    game = Game.new
    puts "Starting a game of YAHTZEE\n\n"
    print "How many players? "
    player_count = gets.chomp.to_i

    game.make_player_list(player_count)

    while game.round < 1
      game.play_round
    end

    binding.pry



  else quit = true
  end
end

puts "Goodbye"


