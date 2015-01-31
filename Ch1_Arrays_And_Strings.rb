#1.1 Implement an algorithm to determine if a string has all unique characters. 
#    What if you cannot use additional data structures?

def methodChecksIfStringUnique(parameter_string) 
	hash_to_return = {}

	parameter_string.each_char do |char|
		hash_to_return[char].nil? ? hash_to_return[char] = true : (return false)
	end

	true
	
end

puts methodChecksIfStringUnique("racecar") # => returns false
puts methodChecksIfStringUnique("qdba") # => returns true