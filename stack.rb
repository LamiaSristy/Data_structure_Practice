
# Create a Stack with two methods push and pop. Use your LinkedList class to keep track of the elements internally.

# Start with your code from LinkedList challenge.
class Node
    attr_accessor :value, :next_node
  
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end
  
  class Stack
    def initialize
      @head = nil
    end
 
    def push(number)
      # your code here
      @head = Node.new(number, @head)
    end
    
    def pop
      # your code here
      puts 'empty' if @head.nil?

      value = @head.value
      @head = @head.next_node
      value
    end
    
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.pop
  # => 5
  
  stack.push(2)
  stack.push(7)
  puts stack.pop
  # => 7
  
  puts stack.pop
  # => 2
  
  puts stack.pop
  # => 3

  puts stack.pop