module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
    def self.compute(a, b)
      if a.length != b.length
        raise ArgumentError.new("must be same length")
      else [a, b].min.size.times.count {|i| a[i] != b[i]}
      end
    end
end

  




