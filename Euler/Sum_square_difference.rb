# Project Euler. Problem #6

# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the 
# first ten natural numbers and the square of the sum is 3025-385 = 2640.

# Find the difference between the sum of the squares of the first 
# one hundred natural numbers and the square of the sum.

# Method 1 : Using formulas (efficient)
limit = 100
squared_sum = (limit * (limit + 1)/2)**2
sum_of_squares = (2*limit+1)*(limit + 1)*limit/6

puts sum_of_squares - squared_sum


# Method 2 : Brute force (unefficient)
squared_sum = (1..100).inject(:+)**2 
sum_of_squares = (1..100).inject(0) {|result, num| result + num**2 }

puts sum_of_squares - squared_sum



