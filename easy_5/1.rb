def ascii_value(string)
  string.chars.reduce(0) {|sum, char| sum + char.ord}
end

# char.ord.chr == char
# If you try this with a longer string, you'll just get the first argument.
# This is because ord only reads the first character of a string.