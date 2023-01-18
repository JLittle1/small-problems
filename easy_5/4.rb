def swap(sentence)
  words = sentence.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# The method given here would not work because the only variables being changed
# are in the method's local scope.