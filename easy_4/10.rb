DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(integer)
  string = ''
  loop do
    integer, digit = integer.divmod(10)
    string.prepend(DIGITS[digit])
    break if integer == 0
  end
  string
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then '-' + integer_to_string(-integer)
  when 0 then '0'
  else '+' + integer_to_string(integer)
  end
end

# Refactored
def signed_integer_to_string(integer)
  case integer <=> 0
  when -1
    sign = '-'
    integer = -integer
  when 0
    return '0'
  else
    sign = '+'
  end
  sign + integer_to_string(integer)
end