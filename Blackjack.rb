#Interactive commend line blackjack game

#def hit_or_stay and make it into operation
def hit_or_stay
  hit_or_stay = ["1", "2"]
end

def calculate_total(cards)
  #learning: use sum method won't work...
  #if hit_or_stay == '1'
  #cards_sum = cards[0] + cards[1] + cards[2]
  #else
  #cards_sum = cards[0] + cards[1]
  #end

  #[['H', '3'], ['D', 'Q']]
  arr = cards.map{ |e| e[1]}

  total = 0
  arr.each do |value|
    if value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  total
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
puts "What would you like to do 1)hit 2)stay"
hit_or_stay = gets.chomp

if hit_or_stay == '1'
  #give player another card if he decides to hit
  puts "you get another card: #{deck.pop}"
  #show player new total of card
  puts "You now have a total of:#{mytotal}}"


else
  puts "let's see who's bigger"
end



