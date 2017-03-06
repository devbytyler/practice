require 'pry'

class Player
  attr_accessor :name, :scores
  def initialize(name)
    @name = name
    @scores = {"aces" => 0, "twos" => 0,  "threes" => 0, "fours" => 0, "fives" => 0, "sixes" => 0, "threefa" => 0, "fofa" => 0, "fully" => 0, "lil straighty" => 0, "big straighty" => 0, "yahtzee" => 0, "chance" => 0, "total" => 0,}
  end
end

