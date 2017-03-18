module BookKeeping
 VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').each do |l|
      return false if !phrase.downcase.include?(l)
    end
    true
  end
end
