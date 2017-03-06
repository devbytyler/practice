def longest_length (arr)
  longest =. arr.reduce do |longest, next_word|
    longest.length > next_word.length ? longest : next_word
  end
  longest.length
end

def format(arr)
  width = longest_length(arr) + 4
  puts '*'* width
  arr.each do |i|
    puts '*' + i.center(width-2) + '*'
  end
  puts '*'* width
end

puts "Enter a list of words separated by spaces: "
list = gets.chomp.split
format(list)