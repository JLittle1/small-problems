def display_anagrams(words)
  combos = Hash.new([])
  words.each do |word|
    combos[word.chars.sort] += [word]
  end
  combos.each_value { |wordlist| p wordlist }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
display_anagrams(words)