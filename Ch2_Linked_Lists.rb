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

end
puts "Start Single Linked List"
testList = LinkedList.new(4)
testList.add(6)
testList.add(8)
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








