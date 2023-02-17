def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |num1|
    arr2.each { |num2| result << num1 * num2 }
  end
  result.sort
end

# I came up with the same solution.

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]