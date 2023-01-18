def crunch(string)
  result = ''
  previous = nil
  string.chars.each do |char|
    unless char == previous
      result << char
      previous = char
    end
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''