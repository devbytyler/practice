require 'pry'
menu = {
  'breakfast' => {
    'entrees' => {
      'tadpoles' => 7,
      'cow pie' => 8,
      'ice cream' => 10
    },
    'sides' => {
      'grass' => 3,
      'cotton candy' => 2,
      'skittles' => 5,
      'plastic' => 4,
      'bubble gum' => 8
    }
  },

  'lunch' => {
    'entrees' => {
      'frog legs' => 7,
      'seahorses' => 12,
      'cow brains' => 10
    },
    'sides' => {
      'buffalo chips' => 5,
      'worms' => 3,
      'shoelaces' => 2,
      'gummy bears' => 3,
      'mud pie' => 4,
      'knuckle sandwich' => 2
    }
  },

  'dinner' => {
    'entrees' => {
      'frog legs' => 10,
      'seahorses' => 15,
      'cow brains' => 13
    },
    'sides' => {
      'buffalo chips' => 8,
      'worms' => 6,
      'shoelaces' => 5,
      'gummy bears' => 4,
      'mud pie' => 5,
      'knuckle sandwich' => 8
    }
  }
}

def print_menu(hash)
  hash.each do |e, h|
    puts ''
    puts "-------------------"
    puts e
    puts "-------------------"
     h.each do |i, p|
       puts "#{i} - $#{p}" 
     end
  end
  return nil
end


# def special_generator(mealtime)
#   arr = []
#   arr << $menu[mealtime]['entrees'].keys.sample + menu[mealtime]['sides']
# end

def comment
  ["That's a good choice", "That's an odd choice, but ok..", "Alright that's tasty", "EEEEEEW."].sample
end

 

print "What meal are you here for? (Breakfast, Lunch, Dinner?) "
mealtime = gets.chomp.downcase

if mealtime == 'breakfast'
  print_menu(menu['breakfast'])
  puts ''
  puts "Good Morning! Our special today is #{menu['breakfast']['entrees'].keys.sample} with #{menu['breakfast']['sides'].keys.sample} and #{menu['breakfast']['sides'].keys.sample}. Do you want the special today?"
    choice = gets.chomp.downcase


    if choice == 'yes'
      puts "Oops, we are out of those things... my bad. Order an entree please."
    else 
      puts "Ok no problem, Which entree would you like to order?"
    end

    entree = gets.chomp.downcase
    puts comment

    price = menu['breakfast']['entrees'][entree]
    

    puts "Now pick a side."
    side1 = gets.chomp.downcase
    puts comment

    price += menu['breakfast']['sides'][side1]


    puts "Now pick another side."
    side2 = gets.chomp.downcase
    puts comment

    price += menu['breakfast']['sides'][side2]

    puts "I'm glad you aren't the one who orders my food!"
    puts "Your total is: $#{price}"

elsif mealtime == 'lunch'
  print_menu(menu['lunch'])
  puts ''
  puts "Good Morning! Our special today is #{menu['lunch']['entrees'].keys.sample} with #{menu['lunch']['sides'].keys.sample} and #{menu['lunch']['sides'].keys.sample}. Do you want the special today?"
    choice = gets.chomp.downcase

    if choice == 'yes'
      puts "Oops, we are out of those things... my bad. Order an entree please."
    else 
      puts "Ok no problem, Which entree would you like to order?"
    end

    entree = gets.chomp.downcase
    puts comment

    price = menu['lunch']['entrees'][entree]
    

    puts "Now pick a side."
    side1 = gets.chomp.downcase
    puts comment

    price += menu['lunch']['sides'][side1]


    puts "Now pick another side."
    side2 = gets.chomp.downcase
    puts comment

    price += menu['lunch']['sides'][side2]

    puts "I'm glad you aren't the one who orders my food!"
    puts "Your total is: $#{price}"

elsif mealtime == 'dinner'
  print_menu(menu['dinner'])
  puts ''
  puts "Good Morning! Our special today is #{menu['dinner']['entrees'].keys.sample} with #{menu['dinner']['sides'].keys.sample} and #{menu['dinner']['sides'].keys.sample}.   Do you want the special today?"
    choice = gets.chomp.downcase

    if choice == 'yes'
      puts "Oops, we are out of those things... my bad. Order an entree please."
    else 
      puts "Ok no problem, Which entree would you like to order?"
    end

    entree = gets.chomp.downcase
    puts comment

    price = menu['dinner']['entrees'][entree]
    

    puts "Now pick a side."
    side1 = gets.chomp.downcase
    puts comment

    price += menu['dinner']['sides'][side1]


    puts "Now pick another side."
    side2 = gets.chomp.downcase
    puts comment

    price += menu['dinner']['sides'][side2]

    puts "I'm glad you aren't the one who orders my food!"
    puts "Your total is: $#{price}"

else
  if mealtime == 'you'
    puts "Heres my number ;)  555-555-5555"
  else puts 'Get out.'
  end
end























