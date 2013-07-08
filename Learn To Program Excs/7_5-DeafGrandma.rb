# Whatever you say to Grandma (whatever you type in), 
# she should respond with this:
#  "HUH?!  SPEAK UP, SONNY!"
# unless you shout it (type in all capitals). 
# If you shout, she can hear you (or at least she thinks so) and yells back:
#  "NO, NOT SINCE 1938!"
# To make your program really believable, have Grandma shout a different year each time, 
# maybe any year at random between 1930 and 1950.
# You can’t stop talking to Grandma until you shout BYE.
# 
# Deaf grandma extended.
# ---------------------
# What if Grandma doesn’t want you to leave? When you shout BYE, 
# she could pretend not to hear you. 
# Change your previous program so that you have to shout BYE three times in a row. 
# Make sure to test your program: if you shout BYE three times but not in a row, 
# you should still be talking to Grandma.

bye_counter = 0

puts "HELLO SONNY!"

while true

	greeting = gets.chomp
	
	case greeting		
	when "BYE!"
		bye_counter += 1
		(bye_counter == 3) ? (puts "GOOD BYE SONNY!"; break) : (puts "...")
	else
		bye_counter = 0
		unless (greeting == greeting.upcase)
			puts "HUH?!  SPEAK UP, SONNY!"
		else
			puts("NO, NOT SINCE #{rand(20)+1930} !")
		end
	end
end