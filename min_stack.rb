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
      @min = nil
    end
 
    def push(number)
      # your code here
      @min = Node.new(number, @min) if  @min == nil || number < @min.value
      @head = Node.new(number, @head)
    end
    
    def pop
      # your code here
      puts 'empty' if @head.nil?

      value = @head.value
      @head = @head.next_node
      @min = @min.next_node if @min.value == value
      value
    end

    def min
        # your code here
        puts 'empty' if @min.nil?
        return @min.value 
        
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