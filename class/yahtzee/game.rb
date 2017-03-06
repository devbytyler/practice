require_relative 'player'

class Game

  attr_accessor :players, :round, :box

  def initialize
    @round = 0
    @players = {}
    @box = ''
  end

  def next_round
    @round += 1
  end

  def push_player(name)
    @players[name] = Player.new(name)
  end

  def make_player_list(num)
    num.times do |x|
      print "Enter a name for player #{x + 1}: "
      name = gets.chomp
      push_player(name)
    end
  end

  def set_box
    print "Where will you assign you points? "
    @box = gets.chomp
  end

  def calculate(arr, box)
    case box
      when 'aces' 
        (arr.select {|x| x = 1}).inject(:+)
      when 'twos'
        (arr.select {|x| x = 2}).inject(:+)
      when 'threes'
        (arr.select {|x| x = 3}).inject(:+)
      when 'fours'
        (arr.select {|x| x = 4}).inject(:+)
      when 'fives'
        (arr.select {|x| x = 5}).inject(:+)
      when 'sixes'
        (arr.select {|x| x = 6}).inject(:+)
      when 'threefa'
        arr.inject(:+)
      when 'fofa'
        arr.inject(:+)
      when 'fully'
        25
      when 'lil straighty'
        30
      when 'big straighty'
        40
      when 'yahtzee'
        50
      when 'chance'
        arr.inject(:+) 
    end
  end

  def roll
    lineup = []
    5.times do
      lineup << rand(1..6)
    end
    print "#{lineup.sort}\n"
    print "Reroll? (y or n): "
    answer = gets.chomp
    while answer == 'y'
      print "Enter the dice to be rerolled separated by commas: "
      rerollers = gets.chomp.split(',')
      rerollers.each do |d|
        lineup.delete_at(lineup.find_index(d.to_i))
        lineup << rand(1..6)
      end
      p lineup.sort!
      print "Reroll? (y or n) :"
      answer = gets.chomp
    end
      calculate(lineup, set_box)
  end

  def play_round
    players.each do |player, player_info|
      print "#{player_info.name}, it is your turn. Press 'enter' to begin rolling"
      enter = gets.chomp
      player_info.scores[@box] = roll
      puts player_info.scores
    end
    next_round
  end


end
