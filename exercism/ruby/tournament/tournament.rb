require 'pry'

module BookKeeping
  VERSION = 1
end

class Tournament
  def tally(input)
    input.split() do |l|
      puts l
    end
  end
end



t = Tournament
input = <<-INPUT.gsub(/^ */, '')
      Allegoric Alaskans;Blithering Badgers;win
      Devastating Donkeys;Courageous Californians;draw
      Devastating Donkeys;Allegoric Alaskans;win
      Courageous Californians;Blithering Badgers;loss
      Blithering Badgers;Devastating Donkeys;loss
      Allegoric Alaskans;Courageous Californians;win
INPUT

binding.pry