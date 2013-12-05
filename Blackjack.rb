#Interactive commend line blackjack game

#def hit_or_stay and make it into operation
def hit_or_stay
  hit_or_stay = ["1", "2"]
end

def calculate_total(cards)
  #[['H', '3'], ['D', 'Q']]
  arr = cards.map{ |e| e[1]}
  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 #J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end
  #correct for Aces
  arr.select{|e| e == "A"}.count.times do
    total -=10 if total > 21
  end
# return the value, the last value implicitedly return the value
  total
end

#start the game
def message(msg)
  puts''
  puts '==> #{msg}'
end

#Start the game portal
puts "Welcome to Blackjack!"
puts "What's your name?"
your_name = gets.chomp
puts "#{your_name}, are you ready to start? 1)Yes 2)No"
ready_to_start =gets.chomp

def ready_to_start
  ready_to_start = ["1", "2"]
end

while !["1","2"].include?(ready_to_start)
  puts "Please enter 1 or 2"
  ready_to_start =gets.chomp
if ready_to_start == '1'
  puts "==>...Loading.....<=="
  puts ""
end
if ready_to_start == '2'
  puts"you can come back later"
  exit
end
end

suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

#same as product method
#deck = []
#suits.each do |suits|
#  cards.each do |card|
#    deck << [suit, cards]
#  end
#end
deck = suits.product(cards)
deck.shuffle!

#Deal Cards
mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

#show Cards
puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of: #{dealertotal}"
puts "#{your_name} have: #{mycards[0]} and #{mycards[1]}, for a total of: #{mytotal}"
puts ""

#Player turn
while mytotal < 21
  puts "What would you like to do 1)hit 2)stay"
  hit_or_stay = gets.chomp

  if !["1","2"].include?(hit_or_stay)
    puts "Error!"
    next
  end

  if hit_or_stay == "2"
    break
  end

  #give player another card if he decides to hit
  new_card = deck.pop
  puts "#{your_name} get another card: #{new_card}"
  mycards << new_card
  mytotal = calculate_total(mycards)
  puts "#{your_name}'s total is now #{mytotal}"

  if mytotal ==21
    puts "#{your_name}, you hit the blackjack!!"
    exit
  elsif mytotal > 21
    puts "#{your_name}, you bust"
    exit
  end
end


puts "Let's see whose bigger!"

#Dealer turn
if dealertotal == 21
  puts "Sorry, #{your_name}, you lose"
  exit
end

while dealertotal < 17
  #hit
  #new_card in here is local variable
  new_card = deck.pop
  puts "Dealer has new card: #{new_card}"
  dealercards << new_card
  dealertotal = calculate_total(dealercards)
  puts "Dealer total: #{dealertotal}"

  if dealertotal == 21
    puts "Sorry, dealer hit blackjack. #{your_name}, you lose"
    exit
  elsif dealertotal > 21
    puts "Dealer bust...So #{your_name}, you won!"
    exit
  end
end


#Compare cards
puts "Dealer's card: "
dealercards.each do |card|
  puts "=> " + card.to_s
end
puts ""

puts "Mycards: "
mycards.each do |card|
  puts "=> " + card.to_s
end

if dealertotal >= mytotal
   puts "Sorry, #{your_name}, you lost!"
else
   puts "#{your_name}, you win!"
end


exit


