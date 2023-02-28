def oddities(arr)
  result = []
  arr.each_with_index { |el, idx| result << el if idx.even? }
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

def evens(arr)
  result = []
  arr.each_with_index { |el, idx| result << el if idx.odd? }
  result
end

def evens(arr)
  result = []
  idx = 1
  while idx < arr.size
    result << arr[idx]
    idx += 2
  end
  result
end

def evens(arr)
  result = []
  idx = 0
  arr.each do |el|
    result << arr[idx] if idx.odd?
    idx += 1
  end
  result
end

p evens([2, 3, 4, 5, 6]) == [3, 5]
p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evens(['abc', 'def']) == ['def']
p evens([123]) == []
p evens([]) == []
p evens([1, 2, 3, 4, 1]) == [2, 4]