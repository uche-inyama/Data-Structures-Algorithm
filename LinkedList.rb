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
    @count = 0
  end

  # To add number at the last index
  # create a node, last node would take the address of the new node
  # Tail would be last node.

  # def add(number)
  #   new_node = Node.new(number)
  #   if @head.nil?
  #     @head = new_node
  #   else
  #     @tail.next_node = new_node
  #   end
  #     @tail = new_node
  #     # @head
  # end



def add(value)
  $node = Node.new(value)
  if @head.nil?
    @head = $node
  else
    @tail.next_node = $node
  end
  @count += 1
  @tail = $node
end

  def get (index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end

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


class Stack < LinkedList

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

list2 = LinkedList.new


  list2.add(4)
  list2.add(2)
  list2.add(5)
  list2.add(7)
  list2.add(9)
  # list2.add(9)
  # list2.add_at(2, 20)
  # list2.add_at(10)

# p list2.add(12)

# list2.remove_at(0)

p list2


# puts list2.get(0)


# stack = Stack.new
# p stack.push(3)
# p stack.push(5)
# puts stack.pop
# p stack
# => 5
