def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(sum)
puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(number)
puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card+deal_card
display_card_total(sum)
sum
end



def hit?(number)
prompt_user
player=get_user_input

if player == 'h'
  number+= deal_card
elsif player == 's'
number
else
  invalid_command
end
end

def invalid_command
puts "Please enter a valid command"
prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
total=initial_round
until total>21
  total=hit?(total)
  display_card_total(total)
end
end_game(total)
end
