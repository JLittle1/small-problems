def running_total(array)
  sum = 0
  array.map {|el| sum += el}
end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |el, a|
    sum += el
    a << sum
  end
end