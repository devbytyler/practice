require 'date'
(Date.today.year..(Date.today.year + 20)).each { |y| puts y if Date.gregorian_leap?(y)}

puts" "
puts "Method 2"
puts" "

(Date.today.year..(Date.today.year + 20)).each do |y|
  puts y if (y % 4 == 0 && y % 100 != 0)
  puts y if (y % 400 == 0)
end