  module BookKeeping
    VERSION = 4 # Where the version number matches the one in the test.
  end

  class Complement
    def self.of_dna(string)
      new_str = ''
      string.chars.each do |l|
        case l
          when 'G' then new_str << 'C'
          when 'C' then new_str << 'G'
          when 'T' then new_str << 'A'
          when 'A' then new_str << 'U'
          else '' 
        end
      end
      if new_str.length == string.length
        new_str
      else
        ''
      end
    end
  end