#WEEK 1 PRACTICE
#1
a = 1
b = a
b = 3

puts a
#A: a is 1

#2
#A: Array is an ordered, indexed of objects. it usually looks like =: Array = []
#A: Hash is a dictionary-like collection of unique keys and their values. it usually looks like =: Hash = { "key" => value}
option = Hash.new
option = {'up' => 2, 'down' => -1}
puts option["up"]

#3
arr = [1, 2, 3, 3]
arr_be_uniq = [1, 2, 3, 3].uniq
arr_be_uniqspecial = [1, 2, 3, 3].uniq!

puts arr # [1,2,3,3,]
puts arr_be_uniq #[1,2,3]
puts arr_be_uniqspecial #[1,2,3]

#4
#Map method: map will modify(add value) to the element selected
a = [["E", "BOOK"], ["D", "BOOK"], ["J", "BOOK_in_Japan"]]
p a.map{ |x| x[1].downcase + "store" }

#Select method: select will return the value if it meets its criteria
p a.select{ |x| x[1].length > 4}

#5
example_symbol = { :up_case =>1, :down_case => 2 }
example_string = { "up_case"=>1, "down_case"=>2}

#6
x = 1
  x.odd? ? "no way!" : "yes, sir!"
#A: no way!

#7
x = 1
  3.times do
    x += 1
  end
  puts x
#A: 4

#8 Undefined local variable or method : "x"


