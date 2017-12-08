class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end


class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map

  def initialize
    @map = []
  end

   def assign(key, value)
     @map.each do |subarr|
       if subarr[0] == key
         subarr[1] = value
         return nil
       end
     end
     @map << [key, value]
   end

   def remove(key)
     @map.reject! { |keyval| keyval[0] = key}
   end

   def lookup(key)
     @map.each_with_index { |pair, idx| return pair[1] if pair[0] == key}
     nil
   end

   def show
     deep_dup(@map)
   end


   private

   def deep_dup(arr)
     arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el}
   end
end
