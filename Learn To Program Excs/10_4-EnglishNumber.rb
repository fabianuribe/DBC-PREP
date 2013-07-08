#Returns a number in english language

def english_number (number)

	raise ArgumentError.new("Argument must be a positive integer") if !(number.is_a? Integer) || number < 0 

	return 'zero' if number == 0

	result = ""

	text_version = {
	'trillion' 	=> 1000000000000,
	'billion' 	=> 1000000000,
	'million' 	=> 1000000,
	'thousand' 	=> 1000,
	'hundred' 	=> 100,
	'ninety' 	=> 90,
	'eighty' 	=> 80,
	'seventy' 	=> 70,
	'sixty' 	=> 60,
	'fifty' 	=> 50,
	'fourty' 	=> 40,
	'thirty' 	=> 30,
	'twenty' 	=> 20,
	'nineteen' 	=> 19,
	'eighteen' 	=> 18,
	'seventeen' => 17,
	'sixteen' 	=> 16,
	'fifteen' 	=> 15,
	'fourteen' 	=> 14,
	'thirteen' 	=> 13,
	'twelve' 	=> 12,
	'eleven' 	=> 11,
	'ten' 		=> 10,
	'nine' 		=> 9,
	'eight' 	=> 8,
	'seven' 	=> 7,
	'six' 		=> 6,
	'five' 		=> 5,
	'four' 		=> 4,
	'three' 	=> 3,
	'two' 		=> 2,
	'one' 		=> 1
	}

	text_version.each do |text , value|

		if number/value > 1

			result << english_number(number/value) + text + ' ' # Recursion

		elsif number/value == 1

			result << 'one ' if number >= 100 # Adds Prefix for numbers greater 100 starting with 'one'

			result << text 

			(number < 100 && number >= 20) ? result << '-' : result << ' ' # Add sufix for numbers greater than 20 and smaller than 100		
		end

		number -= value * (number/value)

		break if number == 0

	end

	return result

end

#Tests
puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(10000)
puts english_number(999999)
puts english_number(1000000000000)