#1.1 Implement an algorithm to determine if a string has all unique characters. 
#    What if you cannot use additional data structures?

def methodChecksIfStringUnique(parameter_string) 
	hash_to_return = {}

	parameter_string.each_char do |char|
		hash_to_return[char].nil? ? hash_to_return[char] = true : (return false)
	end

	true
	
end

# puts methodChecksIfStringUnique("racecar") # => returns false
# puts methodChecksIfStringUnique("qdba") # => returns true


#1.2. plement a function void reverse(char * str) in C or C++ which reverse a null terminated string
def reverse (string_to_check)

	if string_to_check.bytes.last == 0
		puts "yup"
		return string_to_check.reverse
	end

	nil

end

#1.2.a Reverse a string in place
def reverse_in_place (string_to_reverse)

	count_down = string_to_reverse.length-1
	for l in (0...string_to_reverse.length/2)
		temp_var = string_to_reverse[l]
		string_to_reverse[l] = string_to_reverse[count_down]
		string_to_reverse[count_down] = temp_var
		puts string_to_reverse
		count_down -= 1

	end

	 string_to_reverse

end

#puts reverse_in_place("swable")

# puts reverse("hello\x00") # => returns string reversed
# puts reverse("hell") # => returns nil

#1.3 Given two strings, write a method to decide if one a permutation of the other
def check_perm (string_one, string_two)

(return true) if (string_one.chars.sort == string_two.chars.sort)

end

#puts check_perm("test", "estt") # => Same letters, so returns true
#puts check_perm("None", "work") # => Different letters, returns false

#1.4 Write a method to replace all spaces in a string with "%20"

#Ruby way
def stringWithPercents (string_parameter)
	string_parameter.gsub(" ", "%20")
end

#puts stringWithPercents("Hello Mr Jack") # => Prints with %20s

#Different way
def stringWithPerecentsAgain (string_parameter)
	array_returned = []
	string_parameter.each_char do |char_value|
		if (char_value == " ")
			char_value = "%20"
		end
		array_returned << char_value
	end
	array_returned.join
end

#puts stringWithPerecentsAgain("Hello Again Mr Jack") # => Prints with %20s again

#memory efficient way (N run time with no extra memory allocated)
def stringWithPercentsAgainEfficient(string_parameter)

	string_parameter.chars.map do |character|
		if character == " "
		 	character = "%20"
		else
			character
		end
	end.join

end

p stringWithPercentsAgainEfficient("Hello mr again")

#1.5 Implement method to perform basic string compression




