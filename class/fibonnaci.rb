require 'pry'

puts "Enter a number"
num = gets.chomp.to_i

sequence = []

(0 .. num).each do |num|
  if sequence.length >= 2
    sequence.push(sequence[-1] + sequence[-2])
  else
    sequence.push(num)
  end
end

puts sequence