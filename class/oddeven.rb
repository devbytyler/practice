#Odd or Even
print "Enter a number: "
num = gets.chomp.to_i

if (num % 2 == 0)
  puts "Number is even."
else
  puts "Number is odd."
end