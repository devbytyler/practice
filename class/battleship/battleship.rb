require 'pry'
require_relative "map"
require 'terminal-table'

def format(grid)
  rows = []
  first_line = true
  grid.each do |l|
    rows << :separator if !first_line
    rows << l
    first_line = false
  end
  table = Terminal::Table.new :headings => ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],  :rows => rows
  puts table
end


def input_to_index(input) #string
# A = 0
# B = 1
# C = 2
# D = 3
# E = 4
# F = 5
# G = 6
# H = 7
# I = 8
# J = 9
  index = input.scan(/\d+|\D+/)
  index[1] = index[1].to_i - 1
  case index[0]
    when 'A' then index[0] = 0
    when 'B' then index[0] = 1
    when 'C' then index[0] = 2
    when 'D' then index[0] = 3
    when 'E' then index[0] = 4
    when 'F' then index[0] = 5
    when 'G' then index[0] = 6
    when 'H' then index[0] = 7
    when 'I' then index[0] = 8
    when 'J' then index[0] = 9
    end
    index
end

def get_start
  print "Start Index: "
  gets.chomp.upcase
end

def get_direction
  print "Down or to the right? "
  gets.chomp
end

m1 = Map.new('Player 1')
m2 = Map.new('Player 2')

puts "Placing Aircraft Carrier..."
m1.place_aircraft(input_to_index(get_start), get_direction)
format(m1.grid)
puts "Placing Battleship..."
m1.place_battleship(input_to_index(get_start), get_direction)
format(m1.grid)
puts "Placing Submarine..."
m1.place_sub(input_to_index(get_start), get_direction)
format(m1.grid)
puts "Placing Patrol Unit..."
m1.place_patrol(input_to_index(get_start), get_direction)
format(m1.grid)
puts "Placing Destroyer..."
m1.place_destroyer(input_to_index(get_start), get_direction)
format(m1.grid)

binding.pry
