# frozen_string_literal: true

# Binary Search Tree Node class
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

def inorder(node)
  return unless node

  inorder(node.left)
  p node.value
  inorder(node.right)
end

def exist?(node, value)
  return false unless node

  # printf('node.value: %s, value: %s', node.value, value)

  return true if node.value == value

  return exist?(node.left, value) if node.value > value

  exist?(node.right, value) if node.value < value
end

class BST
end

# BST [3 -> 6 -> 5 -> 7 -> 1 -> 10 -> 2]
root = nil
root = insert(root, 3)
root = insert(root, 6)
root = insert(root, 5)
root = insert(root, 7)
root = insert(root, 1)
root = insert(root, 10)
root = insert(root, 2)

p root
inorder(root)

p exist?(root, 3)
p exist?(root, 1)
p exist?(root, 10)
p exist?(root, 8)
p exist?(root, 13)
