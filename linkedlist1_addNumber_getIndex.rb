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
  
end

  list = LinkedList.new

  list.add(3)
  list.add(5)
  puts list.get(5)

  # => 5
