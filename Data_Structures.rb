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

		elsif contending_node.value > established_node.parent

			established_node.right_child = add_to_bst(contending_node, established_node.right_child)

		end

		established_node #return node with attached subnodes and contender node
	end

end



#Another Binary Search Tree with inorder

class Node

	attr_accessor :value, :parent, :left_child, :right_child

	def initialize(value, parent = nil, left_child = nil, right_child = nil)
		@value = value
		@parent = parent
		@left_child = left_child
		@right_child = right_child
	end	

end

class BST
	attr_accessor :root

	def add_elements(data_array)
		data_array.each{|x| self.add_each(x)}
	end

	def add_each(element)
		if @root.nil?
			@root = Node.new(element)
		else
			self.attach_to_tree(Node.new(element), @root)
		end
	end 

	def attach_to_tree(contending_node, established_node)
		return contending_node if established_node.nil?

		contending_node.parent = established_node
		if (contending_node.value < established_node.value)
			established_node.left_child = attach_to_tree(contending_node, established_node.left_child)
		elsif (contending_node.value > established_node.value)
			established_node.right_child = attach_to_tree(contending_node, established_node.right_child)
		end

	end

	def in_order(root_node)
		return 

	end

	def in_order(root_node)
		in_order(root_node.left_child)
		puts root_node
		in_order(root_node.right_child)

	end


end

test = BST.new
test.add_elements([4,2,1])















