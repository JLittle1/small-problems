def interleave(arr1, arr2)
  result = []
  arr1.size.times do |i|
    result << arr1[i]
    result << arr2[i]
  end
  result
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
