class Node
	attr_accessor :key, :left, :right

	def initialize(key, left, right)
		@key = key
		@left = left
		@right = right
	end
end

def insert(node, key)
	if node == nil
		node = Node.new(key, nil, nil)
	end

	if (key < node.key)
		node.left = insert(node.left, key)

	elsif(key > node.key)
		node.right = insert(node.right, key)
	end
	node
end

def pre_order(node)
  if node == nil
    return ''
  end
  
  "#{node.key} #{pre_order(node.left)} #{pre_order(node.right)}"
end


def binary_search_tree(array)
  node = nil
  while !array.empty?
    node = insert(node, array.shift)
  end
  node
  order = pre_order(node)
  order.rstrip
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])