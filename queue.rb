class Node
    attr_accessor :value, :next_node
  
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
end

class Queue
    def initialize
        @head = nil
    end
    def add(number)
      # your code here
      new_node = Node.new(number)
        if @head.nil?
        @head = new_node
        return
        end
        current_node = @head 
        until current_node.next_node.nil?
        current_node = current_node.next_node
        end
        current_node.next_node = new_node

    end
    
    def remove
      # your code here
      if @head.nil?
        return -1
      else
        remove_node = @head.value
        @head = @head.next_node
        return remove_node
      end
    end

    def print_queue
        current_node = @head 
        until current_node.nil?
          puts current_node.value
          current_node = current_node.next_node
        end
      end
end

queue = Queue.new

queue.add(3)
queue.add(5)

queue.print_queue

puts queue.remove

queue.print_queue

