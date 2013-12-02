# var scope determined by do...end
#outer scope vars are available to inner scope, but not vise versa

def make_it_unique(some_array)
  some_array.uniq!
  #methods that mutate the caller, however it doesn't have to use bang method.
end

one_array = [1,2,3,4, 5, 5, 5]

make_it_unique(one_array)

puts one_array


