def swapcase(str)
  arr = str.chars
  arr.each do |char|
    if ('A'..'Z').include?(char)
      char.downcase!
    elsif ('a'..'z').include?(char)
      char.upcase!
    end
  end
  arr.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'