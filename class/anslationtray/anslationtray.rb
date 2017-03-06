require 'pry'
$vowels = ['a', 'e', 'i', 'o', 'u']

def grab_front(word)
  if $vowels.include?(word[0].downcase)
    'w'
  else
    slice_index = 0
    while !$vowels.include?(word[slice_index].downcase)
      slice_index += 1
    end
    word.slice!(0, slice_index)
  end
end

def translate(sentence)
  arr = sentence.split
  arr.each do |word|
    word << grab_front(word) + 'ay'
  end
  arr.join(' ')
end

puts "Enterway ouryay entencesay elowbay: "
sentence = gets.chomp

puts translate(sentence)


#breaks when words contain no vowels