def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

=begin
Edge cases for a method that returns the middle word of a string:
Q: What if the string has an even length?
  A: Return the first of the two middle words
Q: What if the string is empty?
  A: Return an empty string
Q: What if the string contains one word?
  A: Return that word
=end

def penultimate(str)
  words = str.split
  return '' if words.empty?
  idx = (words.size + 1) / 2 - 1
  words[idx]
end

p penultimate('') == ''
p penultimate('the') == 'the'
p penultimate('Close it') == 'Close'
p penultimate('Help someone out') == 'someone'