class Integer
  def fact
    (1..self).reduce(:+) || 1
  end
end


#Method 1 - Using .reduce
print "Input a number: "
num = gets.chomp
sum = (1..num.to_i).reduce(:+) || 1
puts sum


#Method 2 - Using .each and a block (Does not work with zero)
print "Input a number: "
n = gets.chomp
sum2 = 0
(1..n.to_i).each {|num2| sum2 += num2}
puts sum2


#Method 3 - Extending the Integer class
print "Input a number: "
num = gets.chomp.to_i
puts num.fact
