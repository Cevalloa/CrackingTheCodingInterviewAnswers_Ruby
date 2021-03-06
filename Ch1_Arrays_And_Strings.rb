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

#p stringWithPercentsAgainEfficient("Hello mr again")

#1.5 Implement method to perform basic string compression, if there are only 1's then return the string itself
#aabcccccaaa would become a2blc5a3
#If the "compressed" string would not become smaller than the original string, your method should return the original string

def stringCompression(string_value)
	
	start_counter = 0
	end_counter = 0

	hash_with_count = {}
	string_returned = ""
	while(true)

		#If the counter is starting ahead of the string size..time to break loop
		if start_counter > string_value.length-1
			#Is the string just itself with their 'one' counterparts?
			if string_value.length * 2 == string_returned.length
				return string_value
			end

				return string_returned
		end


		if string_value[start_counter] == string_value[end_counter]

			current_letter = string_value[start_counter]

			if hash_with_count[current_letter].nil?
				hash_with_count[current_letter] = 1
			else
				hash_with_count[current_letter] += 1
			end


			end_counter += 1

		#Means there is a new letter
		else
			string_returned += "#{current_letter}#{hash_with_count[current_letter]}"
			#Time to start checking with this new letter
			start_counter = end_counter
			hash_with_count.clear

		end


	end

end

# p stringCompression("tesst")
# p stringCompression("abccdd")
# p stringCompression("abc")
# p stringCompression("test")

#1.8  Given two strings, s i and s2, write code to 
#check if s2 is a rotation of si using only one call to isSubstring 
#(e.g.,"waterbottle"is a rota- tion of "erbottlewat").

def isRotation(string_regular, string_possibly_rotated)

	double_string = string_regular + string_regular

	double_string.include?(string_possibly_rotated)

end

p isRotation("waterbottle", "erbottlewat")
p isRotation("waterbottle", "erbottlewaet")






