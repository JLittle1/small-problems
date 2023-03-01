def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, digits)
  number = number.to_s.chars
  rotated = rotate_array(number[-digits..-1])
  (number[0...-digits] + rotated).join.to_i
end

def max_rotation(number)
  digits = number.to_s.size
  while digits >= 2
    number = rotate_rightmost_digits(number, digits)
    digits -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Solution 2
def max_rotation(number)
  number = number.to_s.chars
  number.size.times do |i|
    number = number[0...i] + number[i + 1..-1] + [number[i]]
  end
  number.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845

=begin
The second solution is built from scratch without the helper methods, trying to
do everything in one loop. It was certainly difficult to come up with the
solution, but having previously coded it in a different way made it much easier.
This solution also works with multiple zeros, but still doesn't preserve
leading zeros. A string return value would be required for that.
=end