def balanced?(str)
  levels = 0
  str.chars.each do |char|
    levels += 1 if char == '('
    levels -= 1 if char == ')'
    return false if levels.negative?
  end
  levels.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

def balanced?(str)
  parens = 0
  squares = 0
  curlies = 0
  str.chars.each do |char|
    case char
    when '(' then parens += 1
    when ')' then parens -= 1
    when '[' then squares += 1
    when ']' then squares -= 1
    when '{' then curlies += 1
    when '}' then curlies -= 1
    end
    return false if [parens, squares, curlies].any?(&:negative?)
  end
  [parens, squares, curlies].all?(&:zero?)
end