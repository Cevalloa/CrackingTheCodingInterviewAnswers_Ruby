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

#Binary Search Tree

class Node

	attr_accessor :parent, :left_child, :right_child, :value

	def initialize(value, parent = nil, left_child = nil, right_child = nil)
		@value = value
		@parent = parent
		@left_child = left_child
		@right_child = right_child
	end

end

class BST

	attr_accessor :root

	def BST.make_tree(array_with_data)   #make the initial tree
		bst = BST.new #Creates instance of this class
		array_with_data.each {|data| bst.add(data)}   #add each array element to the BST

		return bst #return the newly made BST

	end

	def add node_data     #adds each node, one by one

		if @root.nil?

			@root = Node.new(node_data)     #if root is empty, sets root to first entry
		
		else

			add_to_bst(Node.new(node_data), @root) #Add on this node to this root

		end

	end

	def add_to_bst(contending_node, established_node)   #recursive method that adds when there is nothing underneath

		return contending_node if established_node.nil? # If this spot is empty, return this node

		contending_node.parent = established_node # Temporary set contender's parent to what you are adding to (Overridden everytime 
							    # it goes deeper.. all logic is dealt with established_node)
								#only used to indicate the current parent

		if contending_node.value < established_node.value  # If contending node smaller, add to left

			established_node.left_child = add_to_bst(contending_node, established_node.left_child) #Once spot is nil, add contender there

		elsif contending_node.value > node.parent

			established_node.right_child = add_to_bst(contending_node, established_node.right_child)

		end

		established_node #return node with attached subnodes and contender node
	end

end







