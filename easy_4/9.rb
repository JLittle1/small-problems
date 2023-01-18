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

# concat and replace both mutate the caller for strings. keep_if for arrays and
# delete for hashes also, among others.