require 'pry'

def beats_rock?(p)
  if p == "paper" || p == "spock"
    true
  else false
  end
end

def beats_paper?(p)
  if p == "scissors" || p == "lizard"
    true
  else false
  end
end

def beats_scissors?(p)
  if p == "spock" || p == "rock"
    true
  else false
  end
end

def beats_lizard?(p)
  if p == "rock" || p == "paper"
    true
  else false
  end
end

def beats_spock?(p)
  if p == "paper" || p == "lizard"
    true
  else false
  end
end

def battle (p, o)
  case o
    when "rock" then beats_rock?(p)
    when "paper" then beats_paper?(p)
    when "scissors" then beats_scissors?(p)
    when "lizard" then beats_lizard?(p)
    when "spock" then beats_spock?(p)
  end
end

choices = ["rock", "paper", "scissors", "lizard", "spock"]

winner = false
user_score = 0
comp_score = 0

while !winner
  comp = choices.sample
  print "What do you pick? "
  user = gets.chomp
  

  if !choices.include?(user)
    puts "What game are you playing? Try again."
  else
    puts "Computer chose #{comp}"
    if user == comp
      puts "its a tie"
    else
      if battle(user, comp)
        puts "You win this round."
        user_score += 1
        puts "Score: You #{user_score}, Computer #{comp_score} "
      else
        puts "The computer won this round."
        comp_score += 1
        puts "Score: You #{user_score}, Computer #{comp_score} "
      end
    end
  end

  winner = true if user_score == 2
  winner = true if comp_score == 2
  puts " "
end



puts "Game Over"
puts "Final Score: You #{user_score}, Computer  #{comp_score}"



























