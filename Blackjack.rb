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

puts "Welcome to Blackjack!"


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
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of: #{mytotal}"
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
  puts "you get another card: #{new_card}"
  mycards << new_card
  mytotal = calculate_total(mycards)
  puts "Your total is now #{mytotal}"

  if mytotal ==21
    puts "you got the blackjack!!"
    exit
  elsif mytotal > 21
    puts "you bust"
    exit
  end
end

puts "you think your card is big enough? Let's see!"

#Dealer turn

if dealertotal == 21
  puts "Sorry, you lost"
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
    puts "Sorry, dealer hit blackjack. You lose"
    exit
  elsif dealertotal > 21
    puts "Dealer busted...You won!"
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
   puts "Sorry, you lost!"
else
   puts "You win!"
end

exit


















