require 'pry'

class Machine
  attr_accessor :reel1, :reel2, :reel3
  SYMBOLS = ['💥', '☠️', '🍒', '🌮', '🍌', '💡', '💎', '💎💎']

  def initialize
    @reel1 = SYMBOLS.shuffle.shuffle
    @reel2 = SYMBOLS.shuffle.shuffle
    @reel3 = SYMBOLS.shuffle.shuffle
  end

  def pull_handle

  end

  def set_multiplier(cash)
    multiplier = 1
  end
  
end

m = Machine.new
binding.pry

