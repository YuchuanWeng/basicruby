#The well-known quicksort algorithm

def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less   = arr.select{ |x| x <  middle}
  more   = arr.select{ |x| x >= middle}

  sort(less) + [middle] + sort(more)
end

puts (['can', 'feel', 'singing', 'like', 'a', 'can'].sort.join(' '))

#Here is not a normal sort
some_array = ['choco', 'banana', 'apple', 'kiki', 'water']
def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_object|
    if test_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end
  sorted.push smallest
  recursive_sort still_unsorted, sorted
end

puts some_array.sort

#Shuffle

def shuffle arr
  arr.sort_by(rand)
end

puts [1,2,3,4,5,6,7,8,89].shuffle

