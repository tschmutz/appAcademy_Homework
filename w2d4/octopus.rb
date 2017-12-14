def sluggish_octopus(arr)
  
  arr.each_with_index do |octo, i|
    biggest = true
    
    arr.each_with_index do |octo2, j|
      next if i == j
      biggest = false if arr[j] > arr[i]
    end 
    return octo if biggest
  end 
end 




def dominant_octopus(arr)
  return arr if arr.length < 2
  
  mid = arr.length / 2
  
  sorted_left = dominant_octopus(arr[0...mid])
  sorted_right = dominant_octopus(arr[mid..-1])
  
  merge(sorted_left,sorted_right)
end 
  
def merge(left, right)
  sorted = []
  
  until left.empty? || right.empty?
    if left.first > right.first
      sorted << left.shift
    else 
      sorted << right.shift
    end 
  end 
  sorted + left + right
end 



def clever_octopus(arr)
  longest = nil
  
  arr.each do |octo|
    if longest == nil || longest < octo
      longest = octo 
    end 
  end 
  longest
end 


def slow_dance(direction, tiles)
  
  tiles.each_with_index { |tile, idx| return tile if idx == direction}
  
end 


def fast_dance(direction, tiles)
    tiles[dir]
end 
