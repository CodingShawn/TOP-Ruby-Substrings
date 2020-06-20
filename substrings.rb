def substrings(input, dict)
	dict.reduce(Hash.new(0)) do |acc, word|
		expression = Regexp.new(word)
		index = 0
		search_string = input.downcase
		puts word
		while search_string.match(expression)
			acc[word] += 1
			index = find_index(expression, search_string)
			search_string = search_string[(index + 1) .. -1]
			puts index
		end
		acc
	end	
end	

def find_index(regex, string)
	string =~ regex
end	 


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
x = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts x