#merge sort

array_to_sort = [2,1,6,7,9,8,4]

def merge_sort(array_parameter) 
	(return array_parameter) if array_parameter.size <= 1

	middle = array_parameter.size/2

	left = 	merge_sort(array_parameter[0...middle])
	right = merge_sort(array_parameter[middle...array_parameter.size])

	merge(left, right)


end

def merge(array_left, array_right)

	array_sorted = []
	while array_left.length > 0 && array_right.length > 0 do
		
		if array_left[0] > array_right[0]
			array_sorted << array_right.slice!(0)
		else
			array_sorted << array_left.slice!(0)
		end

	end

	if array_left.size == 0 
		array_sorted.concat array_right
	elsif array_right.size == 0
		array_sorted.concat array_left
	end

	array_sorted
end

puts merge_sort(array_to_sort)