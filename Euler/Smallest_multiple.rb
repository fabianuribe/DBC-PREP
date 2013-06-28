# Project Euler. Problem #5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def smallest_multiple 

  number = 1
  increment_size = 1
  check_from = 1
  check_to = 20

  while true
    
    number += increment_size
    
    (check_from..check_to).each do |divisor|

      if number % divisor == 0        
        
        if (check_from != divisor)
          check_from = divisor
          increment_size = number;
        end

      elsif number % divisor != 0
        break
      end

      return number if divisor == check_to
    end
  end
end

puts smallest_multiple


