BLOCKS = 'ABCDEFGHIJKLM'.chars.zip('NOPQRSTUVWXYZ'.chars).to_h
# Blocks take the form of a hash with one side of the block as the key and the
# other side as the value.

def block_word?(word)
  letters = word.chars.map(&:upcase)
  letters.none? { |char| letters.include?(BLOCKS[char]) }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true