class Node
    attr_reader :data
    attr_accessor :left, :right 

    def initialize(data)
        @data = data
    end
end

class Tree
    def initialize(array)
        @root = self.array_to_tree(array, 0)
    end

    def array_to_tree(array, i)
        return nil if i >= array.length || array[i] == 0
        node = Node.new(array[i])
        node.left = array_to_tree(array, 2*i+1)
        node.right = array_to_tree(array, 2*i+2)
        node
    end

    def tree_maxDepth()
        maxDepth(@root)
    end

    def maxDepth(node)
        if node == nil
            return 0
        else 
            left_Depth = maxDepth(node.left)
            right_Depth = maxDepth(node.right)
            if (left_Depth > right_Depth)
                left_Depth + 1
            else
                right_Depth + 1
            end
        end
    end
end

=begin
Maxdepth returns the maximum height of the tree from any given node.
We need max height of the entire tree ie from the root
=end


tree = Tree.new([10, 1, 2, 3, 4, 5, 6])
p tree

puts "Max depth is #{tree.tree_maxDepth}"