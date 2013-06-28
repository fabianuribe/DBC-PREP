# Project Euler. Problem #7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number?


primes =[2]
number = 2

while primes.size < 10001
  number += 1
  primes.each do |prime|
    if number % prime == 0
      break
    elsif prime == primes.last
      primes << number 
    end 
  end 
end

puts primes.last