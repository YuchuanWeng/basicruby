# var scope determined by do...end
#outer scope vars are available to inner scope, but not vise versa

def make_it_unique(some_array)
  some_array.uniq!
  #methods that mutate the caller, however it doesn't have to use bang method.
end

one_array = [1,2,3,4, 5, 5, 5]

make_it_unique(one_array)

puts one_array

#local variable at an inner scope doesn't affect to outside
#it proved that innerscope vars are not availalble to outer scope
arr = [1,3,4,5, "outerscope"]

arr.each do |any|
  puts any
  arr = [1,3,4,5]
end


