def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

def power_to_n(number, exponent)
  if exponent == 1
    number
  else
    multiply(power_to_n(number, exponent - 1), number)
  end
end