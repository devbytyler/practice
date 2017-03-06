SECONDS_IN_EARTH_YEAR = 31557600.0
EARTHS_EARTH_DAYS = 365.25
MERCURY_YEAR = 0.2408467
VENUS_YEAR = 0.61519726
MARS_YEAR = 1.8808158
JUPITER_YEAR = 11.862615
SATURN_YEAR = 29.447498
URANUS_YEAR = 84.016846
NEPTUNE_YEAR = 164.79132


print "Enter yo age! "
age = gets.chomp.to_f
age_in_seconds = age * SECONDS_IN_EARTH_YEAR

puts "Your age in seconds is #{age_in_seconds} seconds."

puts "On  you are #{age_in_seconds * }"