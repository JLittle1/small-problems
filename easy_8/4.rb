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

def palindromes(str)
  result = []
  substrings(str).each do |substring|
    result << substring if substring.size > 1 && substring.reverse == substring
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

def palindromes(str)
  result = []
  substrings(str).each do |substring|
    result << substring if palindrome?(substring)
  end
  result
end

def palindrome?(str)
  letters = str.downcase.split('').delete_if { |char| char !~ /[a-z]/ }
  letters.size > 1 && letters == letters.reverse
end

p palindromes('Madam')
p palindromes('d$^(id')
p palindromes('RaCe&cAr')