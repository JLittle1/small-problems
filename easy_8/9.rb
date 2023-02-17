def reverse_words(sentence)
  words = sentence.split
  words.each { |word| word.reverse! if word.size >= 5 }
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS