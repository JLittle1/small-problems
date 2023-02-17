def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# It wouldn't make sense to return `false` for an empty string because all
# the characters in the string (none) are already uppercase. There are no
# lowercase characters.