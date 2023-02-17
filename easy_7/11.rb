def count_occurrences(arr)
  occurences = Hash.new(0)
  arr.each { |el| occurences[el] += 1 }
  occurences.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

def count_occurrences(arr)
  occurences = Hash.new(0)
  arr.each { |el| occurences[el.downcase] += 1 }
  occurences.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)