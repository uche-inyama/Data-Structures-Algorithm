class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end


  # To add number at the last index
  # create a node, last node would take the address of the new node
  # Tail would be last node.
  def add(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
      @tail = new_node
      @head
  end

  def get (index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end
end

class LinkedListOne < LinkedList
  # adding value at an index
  # Get to the preceding index and stop
  # hold the address in that node to a temporary variable 
  # let the current node hold that temp variable
  # Let prev_node hold the address of the current node
  def add_at(index, item)
    new_node = Node.new(item)
    if index == 0
      @head = new_node
    else
      current = @head
      index -= 1
      index.times do
      current = current.next_node
      end
      $temp = current
      current.next_node = new_node
      new_node.next_node = $temp
    end
  end

  

  #removing value from an index
  #if there is no node return else
  #Get to the preceeding specified index
  #let the current_node hold the address of the new_node
  def remove_at(index)
    current = @head
    if (index == 0)
      @head = current.next_node
      return 
    else 
      index -= 1
      index.times do
        current = current.next_node
      end
      temp = current.next_node
      current.next_node = temp.next_node
    end
  end
end


class Stack < LinkedListOne
   
  #push: we add a node to the last index of a linked list
  def initialize
    @linkedList = LinkedListOne.new
  end

  def push(number)
    new_node = Node.new(number)
      if @head.nil? 
        @head = new_node
      else
        @tail = new_node
      end
  end
  # you always pop the tail
   def pop
    @linkedList.remove(0)&.value
    # your code here
  end
end

# list = LinkedList.new

# list2 = LinkedListOne.new
# p list2.add(3)
# p list2.add(5)
# p list2.add(12)

# list2.remove_at(0)

# p list2
# list2.add_at(2, 4)


# puts list2.get(0)


stack = Stack.new
p stack.push(3)
p stack.push(5)
puts stack.pop
p stack
# => 5