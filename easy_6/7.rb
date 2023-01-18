def halvsies(arr)
  first_half, second_half = [], []
  arr.each_with_index do |el, idx|
    if idx < (arr.size / 2.0).ceil # 2.0 instead of 2 to force a float
      first_half << el
    else
      second_half << el
    end
  end
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]