def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  sanitized = string.downcase.delete('^a-z^0-9')
  palindrome?(sanitized)
end