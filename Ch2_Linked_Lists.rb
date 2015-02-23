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

testList = LinkedList.new(4)
testList.add(6)
testList.add(8)
testList.display_all
