class Stack

  def initialize
    @stack = []
  end

  def add(el)
    stack << el
  end

  def remove
    stack.pop
  end

  def show
    stack
  end

end


class queue

  def initialize
    @stack = []
  end

  def enqueue
    stack.push
  end

  def dequeue
    stack.shift
  end

  def show
    stack
  end
end
