require 'pry'

def merge_sort(arr)
  return arr if arr.size == 1
  half1 = merge_sort(arr[0...arr.size / 2])
  half2 = merge_sort(arr[arr.size / 2..-1])
  merge(half1, half2)
end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

# Non-recursive
def merge_sort(arr)
  m = 1
  while m < arr.size
    i = 0
    while i < arr.size - m
      final_index = [i + 2 * m - 1, arr.size - 1].min
      arr[i..final_index] = merge(arr[i...i + m], arr[i + m..final_index])
      i += 2 * m
    end
    m *= 2
  end
  arr
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
