require './mystack'

stack = MyStack.new

stack.push(rand(30))
puts "Size: #{stack.size}"
puts "Is empty: #{stack.empty?}"
puts "Removing: #{stack.pop}"
puts "Unshift: #{stack.shift}"





