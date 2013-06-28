# Project Euler. Problem #1

def sum_of_multiples_below(max_number)
  (1...max_number).inject(0) do |result, element|
    if (element % 3 == 0 || element % 5 == 0) 
      element + result
    else
      result
    end
  end
end

puts sum_of_multiples_below(1000)




