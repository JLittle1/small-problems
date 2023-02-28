require 'pry'

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