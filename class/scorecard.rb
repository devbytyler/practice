require 'pry'

class Scoreboard
  attr_accessor :score, :team

  def initialize(team)
    @team = team
    @score = {
      team => {
        1 => 0,
        2 => 0,
        3 => 0,
        4 => 0,
        5 => 0,
        6 => 0,
        7 => 0,
        8 => 0,
        9 => 0,
      }
    }
  end

  def add_run(inning: inning_num)
    @score[team][inning] += 1
  end

  def generate_total
    @score[team].values.reduce(:+)
  end

end

team = Scoreboard.new('Astros')
puts team.score
team.add_run inning: 3
team.add_run inning: 3
team.add_run inning: 5
team.add_run inning: 8
puts team.score
puts team.generate_total

