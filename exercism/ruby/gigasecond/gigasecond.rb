  module BookKeeping
    VERSION = 5 # Where the version number matches the one in the test.
  end

class Gigasecond
   def self.from(start_time)
    start_time + (10**9)
   end
end