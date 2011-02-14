require "b_tree.rb"

root = Node.new(5)
root.insert(3)
root.insert(6)
root.insert(2)

puts root.serialize
