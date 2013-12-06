#Diversion:Double-Quoted Strings

what_to_eat = "MENU\n" +
              "Crepe mit nutella\n" +
              "Choko Gelato\n" +
              "Apfel Crunch Pie"

puts what_to_eat

#Interpolation: Double-Quoted Strings
#Ruby knows that you the number convert into string in this case
Dog_Name = 'Ricky'
Dog_age = 11

puts "Dog_Name = #{Dog_Name}, Dog_age = #{Dog_age}"

#Ruby evaluates the expression for you

puts "#{5.2 * 6.0} seconds later, we need to go....\nback..."
