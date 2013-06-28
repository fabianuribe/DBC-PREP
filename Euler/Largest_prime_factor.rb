# Project Euler. Problem #3
# 
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


def big_prime(number)
  prime = number
  (2..Math.sqrt(number).to_i).each do |i|
    break if prime <= i
    prime /= i while (prime > i && prime % i == 0)
  end
  prime
end
 
s = Time.new
puts big_prime(600851475143)
puts "elapsed: #{Time.new-s}"