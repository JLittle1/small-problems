def oddities(array)
  array.select.with_index {|x, i| x if i.even?}
end

def evenities(array)
  array.select.with_index {|x, i| x if i.odd?}
end

def oddities(array)
  odd_array = []
  iterator = 1
  array.each do |x|
    odd_array << x if iterator.odd?
    iterator += 1
  end
  odd_array
end

def oddities(array)
  odd_array = Array.new(array)
  iterator = 0
  odd_array.delete_if do |_|
    iterator += 1
    iterator.even?
  end
end