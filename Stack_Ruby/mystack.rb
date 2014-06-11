# push-     добавляет в последний элемент
# pop  -  удаляет последний элемент
# shift -   удаляет из начала массива
# unshift - добавляет элемент в начало


class MyStack

  def initialize    #метод инициализации, инициализируем переменным значения
    @mystack = []
  end

  def empty?
    @mystack.empty?
  end

  def size
    @mystack.size
  end

  def push(element)
    @mystack.push(element)
  end

  def pop
    @mystack.pop
  end

  def unshift
    @mystack.unshift(element)
  end

  def shift
    @mystack.shift
  end
end
