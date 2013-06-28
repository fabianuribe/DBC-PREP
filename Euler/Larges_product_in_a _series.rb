NUMBER = 73167176531330624919225119674426574
string_number = NUMBER.to_s

greatest = 0
start = 0

while start < string_number.length - 4
  product = string_number[start..(start + 4)].split('').inject(1){|result, num| result * num.to_i }
  greatest = product if product > greatest
end

p greatest