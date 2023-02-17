def leading_substrings(str)
  substrings = []
  str.size.times { |i| substrings << str[..i] }
  substrings
end

def substrings(str)
  strings = []
  str.size.times { |i| strings.concat(leading_substrings(str[i..])) }
  strings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]