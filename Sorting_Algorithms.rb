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


#Bubble Sort
def bubble_sort(array_parameter)

	flag = true

	while(flag) do
		flag = false

		for x in (0...array_parameter.length-1) do 
			if array_parameter[x] > array_parameter[x+1]
				temp = array_parameter[x]
				array_parameter[x] = array_parameter[x +1]
				array_parameter[x+1] = temp
				flag = true;
			end

		end

	end

	array_parameter
end

puts bubble_sort([2,4,6,7,1])

# Selection Sort

# Suppose A is an array of N values. We want to sort A in ascending order. 
#That is, A[1] should be the smallest and A[N] should be the largest.

# The idea of Selection Sort is that we repeatedly find the smallest element in the 
#unsorted part of the array and swap it with the first element in the unsorted part of the array.








