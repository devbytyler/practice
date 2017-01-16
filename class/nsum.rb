class Integer
  def fact
    (1..self).reduce(:+) || 1
  end
end




print "Input a number: "
num = gets.chomp
sum = (1..num.to_i).reduce(:+) || 1
puts sum


print "Input a number: "
n = gets.chomp
sum2 = 0
(1..n.to_i).each {|num2| sum2 += num2}
puts sum2

print "Input a number: "
num = gets.chomp.to_i

puts num.fact
