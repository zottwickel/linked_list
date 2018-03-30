class LinkedList
	attr_accessor :top, :selector

	def initialize
		@top = nil
		@selector = nil
		@size = 0
	end

	def append(datum)
		@size += 1
		if @top == nil
			@top = Node.new(datum)
			@selector = @top
		elsif @top != nil
			until @selector.next_node == nil
			@selector = @selector.next_node
			end
			@selector.next_node = Node.new(datum)
		end
		self
	end

	def prepend(datum)
		@size += 1
		if @top == nil
			@top = Node.new(datum)
		else
			id = @top
			@top = Node.new(datum, id)
		end
		self
	end

	def size
		@size
	end

	def head
		@top
	end

	def tail
		@selector = @top
		until @selector.next_node == nil
			@selector = @selector.next_node
		end
		@selector
	end

	def at(idx=0)
		@selector = @top
		idx.times do
			@selector = @selector.next_node
		end unless idx == nil
		@selector
	end

	def pop
		@size -= 1
		@selector = @top
		until @selector.next_node.next_node == nil
			@selector = @selector.next_node
		end
		deleted = @selector.next_node
		@selector.next_node = nil
		return deleted.value
	end

	def contains?(datum)
		if self.find(datum) != nil
			return true
		else
			return false
		end
	end

	def find(datum)
		@selector = @top
		i = 0
		until @selector == nil
			if @selector.value == datum
				return i
			else
				@selector = @selector.next_node
				i += 1
			end
		end
		return nil
	end

	def to_str
		i = -1
		@selector = @top
		until @selector == nil
			i += 1
			str = self.at(i).value
			print "( #{str} ) -> "
			@selector = @selector.next_node
		end
		print "nil\n"
	end

	def insert_at(datum, idx=0)
		@size += 1
		@selector = @top
		(idx -1).times do
			@selector = @selector.next_node
		end
		id = @selector.next_node
		@selector.next_node = Node.new(datum, id)
		self
	end

	def remove_at(idx=0)
		@size -= 1
		@selector = @top
		(idx -1).times do
			@selector = @selector.next_node
		end unless @selector.next_node.next_node == nil
		if @selector.next_node.next_node == nil
			@selector.next_node = nil
		else
			@selector.next_node = @selector.next_node.next_node
		end
		self
	end
end


class Node < LinkedList
	attr_accessor :value, :next_node
	def initialize(value=nil,next_node=nil)
		@value = value
		@next_node = next_node
	end
end

def test_me
	list = LinkedList.new
	list = list.append("test2")
	list = list.append("Running!")
	list = list.prepend("Systems")
	list = list.append("Eureka!")
	list = list.append("test5")
	list = list.prepend("All")
	list = list.insert_at("and",3)
	puts "head function:\n#{list.head.value}\n\n"
	puts "tail function:\n#{list.tail.value}\n\n"
	puts "size function:\n#{list.size}\n\n"
	puts "at(INDEX) function at INDEX = 3:\n#{list.at(3).value}\n\n"
	puts "pop function:\n#{list.pop}\n\n"
	puts "contains? function:\n#{(list.contains?("Eureka!")).to_s}\n\n"
	puts "find() function:\n#{list.at(list.find("Eureka!")).value}\n\n"
	puts "to_str function:\n#{list.to_str}\n\n"
	puts "insert_at function:"
	list.insert_at("Up", 2)
	puts "#{list.to_str}\n\n"
	puts "remove_at function:"
	list.remove_at(3)
	puts list.to_str
end

test_me