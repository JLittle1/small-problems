def include?(arr, query)
  arr.each { |el| return true if el == query }
  false
end

def include?(arr, query)
  arr.one? { |el| el == query }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false