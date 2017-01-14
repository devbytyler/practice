#!/usr/env/ruby
# Lets make a mad lib
# Create a madlib that prompts the user for all 19 entries. After all entries are submitted print the madlib to the screen with the $words substituted into the paragraph.
# (hint: Look into Ruby strings & Ruby string interpolation)

puts "Madlib Generator"

reqs = ["Adjective", "Noun" , "Noun" , "Body Part (Plural)", "Verb", "Verb", "Verb","Adjective","Noun","Verb ending in 'ed'","Number","Noun","Noun (Plural)","Adjective","Adjective","Place","Funny Word","Letter","Letter","Number","Number"]

def prompt(array)
  $words = []
  for item in array do
    print "Enter a #{item}: "
    $words.push(gets.chomp)
  end
end

prompt(reqs)


$words.map!(&:upcase)

puts ''
puts "Your Story:"

story = "It`s 1990, and SEGA isn`t making very #{$words[0]} games. Nintendo`s mascot, Mario, is making more and more games that are way better than any of SEGA`s. Then SEGA had an #{$words[1]}, what they needed is a Mario of their own...they had the #{$words[2]} of making a rabbit that can stretch his #{$words[3]} out and #{$words[4]} things. That plan didn`t go so well. They needed an animal that can #{$words[5]} itself and #{$words[6]} enemies by doing only a spin. They noticed that hedgehogs have quills that #{$words[7]} and #{$words[8]}. So they went with the hedgehog. Since he was planned to be a rabbit, they programmed him to run at a #{$words[9]} speed. Then, in 1991, `Sonic the Hedgehog` was released for the SEGA #{$words[10]}. In the first year, it out-#{$words[11]} Mario by #{$words[12]} Copies. Sonic was then known as SEGA`s #{$words[13]}. Over the years, Sonic has taken on many #{$words[14]}. In 1998, he took on a #{$words[15]} style in the game `Sonic Adventure.` Today, Mario and Sonic are still #{$words[16]} rivals. Also, in Winter 2007, Mario and Sonic will compete in the 2008 #{$words[17]} Olympics in `Mario and Sonic at the Olympic Games` for the Nintendo #{$words[18]} and Nintendo #{$words[19]}#{$words[20]}."
 
 puts story



