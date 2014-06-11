require './mystack'
require 'minitest/autorun'

# class StackTest < Test::Unit::TestCase
#
#   def initialize
#     @stack = MyStack.new
#   end
#
#   def rand_stack
#     assert_equal true, @stack.length > 0
#
#   end
# end
#
class StackTest < MiniTest::Unit::TestCase
  def setup
    @stack = MyStack.new
  end

  def test_initialize
    assert_equal true, @stack.empty? #проверка созданного стека на наличие данных
  end

  def test_mystack_push               # проверка добавления любого числа
    @stack.push(rand(100))
    assert_equal true, @stack.size > 0
  end

  def test_push                        # цикл создаст значения от 0 до 2, проверка на наличие в стеке 3 значений
    3.times { @stack.push(rand(10)) }
    assert_equal 3, @stack.size
  end


  def test_pop_items_from_stack
    @stack.push(4)
    @stack.push(9)
    assert_equal 9, @stack.pop
  end

  def test_stack_push_pop_empty
    3.times { @stack.push(rand(20)) }
    3.times { @stack.pop }
    assert_equal true, @stack.empty?
  end


  def test_pop_empty              #тест на проверку добавления пустых данных
    assert_equal nil, @stack.pop
  end
end
