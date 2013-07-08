# Modern” Roman numerals. 
# 
# Eventually, someone thought it would be ter- ribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. 
# As a result of this development, you must now suffer. 
# Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.
# For reference, these are the values of the letters used:
# I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000


ranges = Array.new
ranges << [ "M", 501, 1000 ]
ranges << [ "D", 101, 500 ]
ranges << [ "C", 51, 100 ]
ranges << [ "L", 11, 50 ]
ranges << [ "X", 6, 10 ]
ranges << [ "V", 3, 5 ]
ranges << [ "I", 1, 1 ]



def romanize(number)

	number.to_i!

	romanNumber = ''


	ranges.each do |range|

		if (numer > range[1] && number < range[2])

			if (number == range[2])
				romanNumber << range[0]
				number -= range[2]

			elsif ( ranges.detect {|x| x[2]})















# 	romanNumber = ''
# 	remainder = number

# 	if (remainder/1000)
# 		romanNumber += 'M'*(remainder/1000)
# 		remainder = (remainder%1000)
# 	end

# 	if (remainder/500)
# 		romanNumber += 'D'*(remainder/500)
# 		remainder = (remainder%500)
# 	end
	
# 	if (remainder/100)
# 		romanNumber += 'C'*(remainder/100)
# 		remainder = (remainder%100)
# 	end

# 	if (remainder/50)
# 		romanNumber += 'L'*(remainder/50)
# 		remainder = (remainder%50)
# 	end

# 	if (remainder/10)
# 		romanNumber += 'X'*(remainder/10)
# 		remainder = (remainder%10)
# 	end

# 	if(remainder == 9)
# 		romanNumber += 'IX'
# 		remainder = 0
# 	end

# 	if (remainder/5)
# 		romanNumber += 'V'*(remainder/5)
# 		remainder = (remainder%5)
# 	end

# 	if(remainder == 4)
# 		romanNumber += 'IV'
# 		remainder = 0
# 	end

# 	if (remainder/1)
# 		romanNumber += 'I'*remainder
# 		remainder = 0
# 	end

# 	return romanNumber

# end


print romanize(19)