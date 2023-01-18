def string_to_integer(string)
  values = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
    '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }
  number = 0
  digits = string.split('') 
  until digits.empty? do
    digit = values[digits.shift]
    number += digit * (10 ** digits.size)
  end
  number
end


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def hexadecimal_to_integer(string)
  digits = string.downcase.chars.map {|char| DIGITS[char]}
  value = 0
  digits.each {|digit| value = 16 * value + digit}
  value
end
