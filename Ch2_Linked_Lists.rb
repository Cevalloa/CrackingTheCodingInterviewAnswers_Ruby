#Single LinkedList
class Node

	attr_accessor :value, :next

	def initialize(value, next_value =nil)

		@value = value
		@next = next_value

	end

end

class LinkedList

	def initialize(value)

		@root = Node.new(value)

	end

	def add(value)

		current = @root
		while current.next != nil
			current = current.next
		end 

		current.next = Node.new(value)

	end

	def insert_item_at(value, index)

		if index == 0

			@root = Node.new(value, @root)

		else

			current_index = 0
			current = @root

			while ((current_index != index-1) && current.next != nil)

				current_index += 1
				current = current.next

			end

			current.next = Node.new(value, current.next)


		end

	end

	def delete_item_at(index)

		if index == 0

			@root = @root.next

		else
			current_index = 0
			current = @root
			while ((current_index !=  index-1) && (current.next != nil))

				current_index += 1
				current = current.next

			end

			current.next = current.next.next

		end


	end

	def display_all

		if @root.nil?

			puts "LinkedList empty"
			return

		end

		puts @root.value
		current = @root
		while current.next != nil
			current = current.next
			puts current.value
		end

	end

	#2.1 code to remove duplicates from an unsorted linkedlist
		#no temporary buffer is allowed
	def remove_duplicates

		current = @root   #Value currently checking

		#For every current node, run the starting node & check if there is a match


		while current != nil  #Going to go over every value
			starting = current  #Starts checking where it hasn't been checked

			while starting.next != nil  #Continue if it isn't at the end of the line
				puts "starting is #{starting.value
				}"
				if starting.next.value == current.value  #If the value is eql to the value we are checking
					#delete this node
					starting.next = starting.next.next
				else
					starting = starting.next  #Check next in line
				end
			end

			current = current.next  #begin checking if any other values match this value

		end


	end

end
puts "Start Single Linked List"
testList = LinkedList.new(4)
testList.add(6)
testList.add(8)
testList.insert_item_at(5,0)
testList.insert_item_at(4,2)
testList.insert_item_at(7,4)
testList.delete_item_at(3)
testList.display_all

puts "removing duplicates in single linked list"
testList.remove_duplicates

testList.display_all

#Double LinkedList
class NodeDouble
	attr_accessor :value, :next, :previous

	def initialize(value, next_value = nil, previous_value = nil)
		@value = value
		@next = next_value
		@previous = previous_value
	end

end

class DoubleLinkedList

	attr_accessor :root

	def initialize(value)

		@root = NodeDouble.new(value, nil, nil)

	end

	def add(value)
		if @root.nil?

			@root = NodeDouble.new(value, nil,nil)

		else

			current = @root
			while current.next != nil

				current = current.next

			end

			current.next = NodeDouble.new(value, nil, current)

		end

	end

	def display_all

		puts @root.value
		current = @root

		while current.next != nil
			current = current.next
			puts current.value
		end


	end

end

puts "Starts double linked list"
testDouble = DoubleLinkedList.new(3)
testDouble.add(6)
testDouble.add(8)
testDouble.display_all








