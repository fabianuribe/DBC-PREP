# Building and sorting an array. 
# 
# Write the program we talked about at the beginning of this chapter, 
# one that asks us to type as many words as we want (one word per line, continuing until we just press Enter on an empty line) 
# and then repeats the words back to us in alphabetical order. Make sure to test your program thoroughly; 
# for example, does hitting Enter on an empty line always exit your program? Even on the first line? And the second?



puts "Enter a word per line and hit enter hit enter on a blank line when you are done"

wordArray = Array.new

while true
	word = gets.chomp
	break if word.empty?
	wordArray << word
end

puts wordArray.sort