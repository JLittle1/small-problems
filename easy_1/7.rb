def stringy(number)
  string = ''
  number.times {|i| string += i.even? ? '1' : '0'}
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(number, first=1)
  string = ''
  number.times do |i|
    i += first
    string += i.odd? ? '1' : '0'
  end
  string
end

puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'