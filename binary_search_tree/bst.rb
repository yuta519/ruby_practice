class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def insert(node, value)
  return Node.new(value) unless node

  node.left = insert(node.left, value) if value < node.value
  node.right = insert(node.right, value) if value > node.value

  node
end

class BST
end

# BST [3 -> 6 -> 5 -> 7 -> 1 -> 10 -> 2]
root = nil
root = insert(root, 3)
root = insert(root, 6)
root = insert(root, 5)

p root.value
p root.right.value
p root.left
p root
