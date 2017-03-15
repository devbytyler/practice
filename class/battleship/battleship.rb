require 'pry'
require_relative "map"
require 'terminal-table'
require 'colorize'

def format(grid)
  row_headers = ['A'.blue, 'B'.blue, 'C'.blue, 'D'.blue, 'E'.blue, 'F'.blue, 'G'.blue, 'H'.blue, 'I'.blue, 'J'.blue]
  rows = []
  row_headers.each_with_index do |element, index|
    rows << element.split + grid[index]
  end

  table = Terminal::Table.new :headings => [' ', '1'.blue, '2'.blue, '3'.blue, '4'.blue, '5'.blue, '6'.blue, '7'.blue, '8'.blue, '9'.blue, '10'.blue],  :rows => rows, :style => {:all_separators => true }
  puts table
end

def can_place?(ship_type, direction, start_index)
  case direction
    when "right"
      if start_index[1] == 9
        return false
      elsif start_index[1] == 8
        if ship_type == "patrol"
          return true 
        else 
          return false
        end
      elsif start_index[1] == 7
        if ["patrol", "destroyer", "sub"].include? ship_type
          return true
        else 
          return false
        end
      elsif start_index[1] == 6
        if ship_type == "aircraft"
          return false
        else
          return true
        end
      elsif start_index[1] <= 5
        return true
      end
    when "down"
      if start_index[0] == 9
        return false
      elsif start_index[0] == 8
        if ship_type == "patrol"
          return true 
        else 
          return false
        end
      elsif start_index[0] == 7
        if ["patrol", "destroyer", "sub"].include? ship_type
          return true
        else 
          return false
        end
      elsif start_index[0] == 6
        if ship_type == "aircraft"
          return false
        else
          return true
        end
      elsif start_index[0] <= 5
        return true
      end
  end
end

def input_to_index(input)
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
  print "Start Index: ".green
  gets.chomp.upcase
end

def get_direction
  print "Down or to the right? ".green
  gets.chomp
end

m1 = Map.new('Player 1')
m2 = Map.new('Player 2')


def place_ships(map)
  format(map.grid)

  aircraft_placed = false
  while !aircraft_placed
    puts "Placing Aircraft Carrier . . .".yellow
    start = get_start
    direction = get_direction

    if can_place?("aircraft", direction, input_to_index(start))
      map.place_aircraft(input_to_index(start), direction)
      format(map.grid)
      aircraft_placed = true
    else
      puts "Forbidden Territory! Try again!".red
    end
  end

  battleship_placed = false
  while !battleship_placed
    puts "Placing Battleship . . .".yellow
    start = get_start
    direction = get_direction

    if can_place?("battleship", direction, input_to_index(start))
      map.place_battleship(input_to_index(start), direction)
      format(map.grid)
      battleship_placed = true
    else
      puts "Forbidden Territory! Try again!".red
    end
  end

  sub_placed = false
  while !sub_placed
    puts "Placing Submarine . . .".yellow
    start = get_start
    direction = get_direction

    if can_place?("sub", direction, input_to_index(start))
      map.place_sub(input_to_index(start), direction)
      format(map.grid)
      sub_placed = true
    else
      puts "Forbidden Territory! Try again!".red
    end
  end

  patrol_placed = false
  while !patrol_placed
    puts "Placing Patrol Ship . . .".yellow
    start = get_start
    direction = get_direction

    if can_place?("patrol", direction, input_to_index(start))
      map.place_patrol(input_to_index(start), direction)
      format(map.grid)
      patrol_placed = true
    else
      puts "Forbidden Territory! Try again!".red
    end
  end

  destroyer_placed = false
  while !destroyer_placed
    puts "Placing Destroyer . . .".yellow
    start = get_start
    direction = get_direction

    if can_place?("destroyer", direction, input_to_index(start))
      map.place_destroyer(input_to_index(start), direction)
      format(map.grid)
      destroyer_placed = true
    else
      puts "Forbidden Territory! Try again!".red
    end
  end
end

place_ships(m1)

binding.pry
