def center_of(text)
  if text.size.odd?
    text[text.size / 2]
  else
    text[(text.size / 2) - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'