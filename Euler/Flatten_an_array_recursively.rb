# Flatten an Array Recursively

# Imagine we have an array that potentially contains other arrays, e.g.,

# ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]]
# Write a recursive method flatten that takes as its input an array and returns a fully flattened array. 
# 
# For example, using the above array flatten should work thus:

# array = ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]]
# flatten(array) # => ["bananas", 1, 2, 3, "apple", "cheese", 100, 20, true, 4.0, 7, 32]
# You can see that it "flattens" an array of arrays into an array that contains no arrays. 
# If the input array contains no arrays it should just return the input array, e.g.,

# flatten([1,2,3]) # => [1,2,3]
# Remember, you should do this recursively. 
# Also remember, recursive doesn't mean "no loops." It means a method that calls itself.


def flatten(array, flattened_array=[])
  array.each do |element|
    if element.class == Array 
      flatten(element, flattened_array)
    else
      flattened_array << element
    end
  end
  flattened_array 
end


# Test code:
array = ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]]
p flatten(array) #["bananas", 1, 2, 3, "apple", "cheese", 100, 20, true, 4.0, 7, 32]


# Next up, for those who got it to work, can you write it with two constraints:

# 1. No iteration inside the method (inject, each, map, etc. not allowed)
# 2. No other arguments besides the input array


def flatten(array)
  return [] if array.empty?
  flat = array.shift
  flat = flat.class == Array ? flatten(flat) : [flat]
  flat + flatten(array)
end


# Test code:
array = ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]]
p flatten(array) #["bananas", 1, 2, 3, "apple", "cheese", 100, 20, true, 4.0, 7, 32]
