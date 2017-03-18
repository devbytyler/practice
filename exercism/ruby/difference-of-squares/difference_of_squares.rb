  module BookKeeping
    VERSION = 3 # Where the version number matches the one in the test.
  end

  class Squares
    def initialize(num)
      @num = num
    end

    def square_of_sum
      (@num > 0) ? (1..@num).reduce(:+) ** 2 : 0
    end

    def sum_of_squares
      (@num > 0) ? (1..@num).reduce {|r, n| r += (n ** 2)} : 0
    end

    def difference
      square_of_sum - sum_of_squares
    end
  end