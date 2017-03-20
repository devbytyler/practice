require 'pry'

module BookKeeping
  VERSION = 1
end

class Sieve

  attr_accessor :limit ,:range

  def initialize(limit)
    @limit = limit
    @range = {}
    (1..@limit).each do |i|
      @range[i] = "prime"
    end
  end

  def primes
    @range.each do |k, v|
      if k == 1
        @range.delete(k)
      elsif v == "prime"
        m = k
        while m < limit
          m += k
          @range[m] = "composite" if m <= @limit
        end
      end
    end
    @range.select{|k, v| v == "prime"}.keys
  end
end
