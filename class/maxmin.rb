def large_n_small(arr)
  puts "Largest: #{arr.inject() {|a,b| a > b ? a : b}}"
  puts "Smallest: #{arr.inject {|a,b| a > b ? b : a}}"
end

rand_arr = Array.new(10) {rand(1...100)}
p rand_arr

large_n_small(rand_arr)
