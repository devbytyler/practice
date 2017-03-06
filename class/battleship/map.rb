require 'pry'

class Map
  attr_accessor :user, :grid

  def initialize(user)
    @user = user
    @grid = [
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
       [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ']
    ]
  end

  def place_aircraft(start, direction)
    if direction == 'right'
      5.times do |i|
        self.grid[start[0]][start[1] + i] = '✈️'
      end
    elsif direction == 'down'
      5.times do |i|
        self.grid[start[0] + i][start[1]] = '✈️'
      end
    end
  end

    def place_battleship(start, direction)
    if direction == 'right'
      4.times do |i|
        self.grid[start[0]][start[1] + i] = '✈️'
      end
    elsif direction == 'down'
      4.times do |i|
        self.grid[start[0] + i][start[1]] = '✈️'
      end
    end
  end

    def place_destroyer(start, direction)
    if direction == 'right'
      3.times do |i|
        self.grid[start[0]][start[1] + i] = '✈️'
      end
    elsif direction == 'down'
      3.times do |i|
        self.grid[start[0] + i][start[1]] = '✈️'
      end
    end
  end

    def place_sub(start, direction)
    if direction == 'right'
      3.times do |i|
        self.grid[start[0]][start[1] + i] = '✈️'
      end
    elsif direction == 'down'
      3.times do |i|
        self.grid[start[0] + i][start[1]] = '✈️'
      end
    end
  end

    def place_patrol(start, direction)
    if direction == 'right'
      2.times do |i|
        self.grid[start[0]][start[1] + i] = '✈️'
      end
    elsif direction == 'down'
      2.times do |i|
        self.grid[start[0] + i][start[1]] = '✈️'
      end
    end
  end

end