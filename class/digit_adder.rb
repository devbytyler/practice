require 'pry'

#formats a number to have commas
def format(num)
  num.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end


#generates a large number
rnum = rand(9999999999)
puts "Big Number: #{rnum}"
puts "Big Number Formatted: #{format(rnum)}"


#Splits up random number by commas and stores in array
arr = format(rnum).split(',')
puts "Big number split: #{arr}"


#Loops through each comma group until total digits == 1
 while arr.join.length > 1
  temp_array = []
  arr.each do |group|
    temp_array << group.chars.map(&:to_i).reduce(:+)
  end

  print "Added groups #{temp_array} \n"
  arr = format(temp_array.join).split(',')
  print "Reformat as: #{arr} \n"
 end



 puts "Final answer #{arr.join.to_i}"