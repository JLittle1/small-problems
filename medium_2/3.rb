def letter_percentages(str)
  result = {}
  lowercase = str.chars.count { |char| ('a'..'z').include?(char) }
  uppercase = str.chars.count { |char| ('A'..'Z').include?(char) }
  neither = (str.size - lowercase) - uppercase
  result[:lowercase] = percentage(lowercase, str.size)
  result[:uppercase] = percentage(uppercase, str.size)
  result[:neither] = percentage(neither, str.size)
  result
end

def percentage(numerator, denominator)
  ((numerator.to_f / denominator) * 100).round(1)
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }