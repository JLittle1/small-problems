def count_occurrences(array)
  counts = Hash.new(0)
  array.each {|element| counts[element.downcase] += 1}
  counts.each {|key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)