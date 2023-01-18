def palindromic_number?(number)
  number = number.to_s
  number == number.reverse
end

# If the number begins with one or more zeroes, it will still work, but it must
# be passed to the method as a string.