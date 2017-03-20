class Array

  def nearest_larger_value(index)
    distance = 0
    found_larger = false
    next_largest_value = nil
    while !found_larger
      distance += 1
      if (self[index - distance] > self[index]) && (self[index + distance] > self[index])
        (self[index - distance] > self[index + distance]) ? next_largest_value = self[index - distance] : next_largest_value = self[index + distance]
        found_larger = true
      elsif self[index - distance] > self[index]
        next_largest_value = self[index - distance]
        found_larger = true
      elsif self[index + distance] > self[index]
        next_largest_value = self[index + distance]
        found_larger = true
      end
    end
    return next_largest_value
  end

end


rand_array = []
10.times do 
  rand_array << rand(100)
end
p rand_array

random_number = rand_array.sample
number_index = rand_array.index(random_number)

puts "Finding nearest value to #{random_number} at index #{number_index}"
p rand_array.nearest_larger_value(number_index)

