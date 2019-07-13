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
    return max(leftH, rightH)+1
end


def isBalanced(root, lh = nil, rh =nil)
    if root.nil?
      return 1
    end
    lh = findHeight(root.left)
    rh = findHeight(root.right)

    if (lh-rh).abs <= 1 && isBalanced(root.left) && isBalanced(root.right)
      return true
    end
  return false
end
def balanceTree?(array)
  root = array_to_tree(array, 0)
  isBalanced(root)
end

puts balanceTree?([1, 2, 0, 3, 4, 0, 0])
# puts balanceTree?([1, 2, 3, 4, 5, 6, 7])
