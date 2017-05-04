#YOUR CODE GOES HERE
require 'pry'
def duplicate_counter(array)
  array_sort = array.sort
  i = 0
  t = array_sort.length
  counter = 0
  while i < t
    if array_sort[i] == array_sort[i+1]
      counter += 1
      i += 1
    else
      i += 1
    end
  end
  puts counter
  # puts array_sort
end

duplicate_counter([1, 7, 7, 7, 3, 5])
duplicate_counter([5, 7, 9])
duplicate_counter([0,-5,-5,33,33,33])
