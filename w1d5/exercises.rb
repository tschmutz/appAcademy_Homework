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


class Queue

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

class Map

  def initialize
    @map = []
  end

   def assign(key, value)
     if lookup(key)
       @map[lookup(key)] = [key, value]
     else
       @map << [key, value]
     end
     @map 
   end

   def remove(key)
     @map.select { |keyval| keyval[0] != key}
   end

   def lookup(key)
     @map.each_with_index { |pair, idx| return idx if pair[0] == key}
     nil
   end

   def show
     @map
   end
end
