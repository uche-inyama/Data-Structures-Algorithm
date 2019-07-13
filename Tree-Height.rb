class Node
    attr_reader :data
    attr_accessor :left, :right

    def initialize(data)
        @data = data
    end
end

def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
    node
end

def max (a,b)
  a>b ? a : b
end

def findHeight(root)
  if root.nil?
    return 0
  end
    leftH = findHeight(root.left)
    rightH= findHeight(root.right)
    return max(leftH, rightH) + 1
end

def binary_tree_height(array_tree)
  root = array_to_tree(array_tree, 0)
  findHeight(root)
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
