#Odd or Even
print "Enter a number: "
num = gets.chomp.to_i

if (num % 2 == 0)
  puts "Number is even."
else
  puts "Number is odd."
end


(1..10).to_a.select(&:even?) #means that you are passing a block. bypasses having an iterator. apply a method to each value in an array or range

(1..10).to_a.select(|x| x.even?)