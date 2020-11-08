class Node
    attr_accessor :value, :min, :next_node
  
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
      @min = (@next_node.nil? || @value < @next_node.min) ? @value : @next_node.min
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

    def min
        # your code here
        puts 'empty' if @head.nil?
        return @head.min 
        
    end
    
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3