  module BookKeeping
    VERSION = 3 # Where the version number matches the one in the test.
  end

  class Raindrops
    def self.convert(num)
      no_factors = (num % 3 != 0 && num % 5 != 0 && num % 7 != 0)
      rain_speak = ''
      rain_speak << 'Pling' if num % 3 == 0
      rain_speak << 'Plang' if num % 5 == 0     
      rain_speak << 'Plong' if num % 7 == 0    
      rain_speak << num.to_s if no_factors
      rain_speak
    end
  end