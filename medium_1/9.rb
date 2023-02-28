def fibonacci(nth)
  prev = 0
  cur = 1
  (nth - 1).times do
    prev, cur = cur, prev + cur
  end
  cur
end

p fibonacci(4)
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501