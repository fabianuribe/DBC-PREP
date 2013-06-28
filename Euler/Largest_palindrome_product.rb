# Project Euler. Problem #4

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.



palindrome = 0

(100..999).each do |first|
  (first..999).each do |seccond|
    product = first * seccond
    if product.to_s.reverse == product.to_s
      palindrome = product if product > palindrome
    end
  end
end

puts palindrome
