print "Enter a number: "
num = gets.chomp.to_i 
puts ((1..num).select{|num| num.odd?}).reduce(:+)