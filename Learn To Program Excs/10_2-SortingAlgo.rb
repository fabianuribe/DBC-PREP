# ------------------------------------------------------------------------
#  Non recursive version
# ------------------------------------------------------------------------
# 
def non_recursive_sort(unsorted_array)

  sorted_array = Array.new
  
  while !unsorted_array.empty?

    sorted_array <<  unsorted_array.inject(unsorted_array.first){ |result, element| result.downcase <= element.downcase ? result : element }

    unsorted_array.delete_at(unsorted_array.index(sorted_array.last))
  end

  sorted_array
end

# ------------------------------------------------------------------------
# Recursive Version
# ------------------------------------------------------------------------

def sort(some_array) # This "wraps" recursive_sort. 
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array) 

  return sorted_array if unsorted_array.empty?

  sorted_array << unsorted_array.inject(unsorted_array.first){ |result, element| result.downcase <= element.downcase ? result : element }

  unsorted_array.delete_at(unsorted_array.index(sorted_array.last))

  recursive_sort(unsorted_array, sorted_array)
end



# ------------------------------------------------------------------------
# Quick Sort Algorithm
# ------------------------------------------------------------------------

def quick_sort(array)

  return array if array.empty?

  middle = array.pop
  less = array.select{|x| x.downcase < middle.downcase }
  more = array.select{|x| x.downcase >= middle.downcase }

  quick_sort(less) + [middle] + sort(more)
end



list = ["Samantha", "elizabeth", "Tatiana", "dinhora", "Anastasia", "fabiola", "Rigoberta", "Zimbawe" ]

puts quick_sort(list)