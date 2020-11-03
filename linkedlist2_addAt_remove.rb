class Node
    attr_accessor :value, :next_node
  
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
end

class LinkedList

    def initialize #setup head and tail
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

    def get(index)
      # your code here
      current_node = @head
      index.times do
        current_node = current_node.next_node
      end
      puts current_node.value
      return current_node.value
    end
  
    def add_at(index,item)
      if index == 0
        @head = Node.new(item,@head)
        return
      end
      current_node = @head
      (index-1).times do
        current_node = current_node.next_node
      end

      new_node = Node.new(item, current_node.next_node)
      current_node.next_node = new_node
    end

    def remove(index)
      if index == 0
        @head = @head.next_node
        return
      end
      current_node = @head
      (index-1).times do
        current_node = current_node.next_node
      end

      current_node.next_node = current_node.next_node.next_node
    end

    def print_node
      current_node = @head 
      until current_node.nil?
        puts current_node.value
        current_node = current_node.next_node
      end
    end
end

  
  list = LinkedList.new
  list.add(3)
  list.add(5)
  list.add_at(2,7)
  list.remove(1)
  list.print_node

