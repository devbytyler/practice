require 'terminal-table'
require 'pry'

p "How many players do you have?"
players = gets.chomp.to_i

players

rows = []
rows <<  aces = ['Aces', playersall]
rows <<  twos = ['Two', nil]
rows <<  threes = ['Three', nil]
rows <<  fours = ['Four', nil,nil, nil]
rows <<  fives = ['Five', nil,nil, nil]
rows <<  sixes = ['Six', nil,nil, nil]
rows << :separator
rows <<  threefas = ['Three of a kind', nil,nil, nil]
rows <<  fofas = ['Four of a kind', nil,nil, nil]
rows <<  fullies = ['Full-house', nil,nil, nil]
rows <<  smallsies = ['Small-straight', nil,nil, nil]
rows <<  largies = ['Large-straight', nil,nil, nil]
rows <<  yahtzees = ['Yahtzee', nil,nil, nil]
rows <<  chances = ['Chance', nil,nil, nil]
rows << :separator
rows << ['Total', 0, 0, 0]

# table = Terminal::Table.new :rows => rows

table = Terminal::Table.new
table.title = "Scorecard"
table.headings = players
table.rows = rows

puts table
binding.pry

players.count = nil

playersall = players.count 