#Math and stuff
def add n1, n2 
  n1 + n2
end

def subt n1, n2
  n1 - n2
end

def mult n1, n2
  n1 * n2
end

def div n1, n2
  n1.to_f / n2.to_f
end

def rem n1 , n2
  n1 % n2
end

puts "Enter two numbers separated by a space: "
nums = gets.chomp.split().map {|n| n.to_i }

puts "Added: #{add nums[0], nums[1]}"
puts "Subtracted: #{subt nums[0], nums[1]}"
puts "Multipled: #{mult nums[0], nums[1]}"      
puts "Divided: #{div nums[0], nums[1]}"
puts "Remainder is #{rem nums[0], nums[1]}"