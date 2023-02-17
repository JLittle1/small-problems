def staggered_case(str)
  result = ''
  str.size.times do |i|
    if i.even?
      result << str[i].upcase
    else
      result << str[i].downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case(str, first_upper: true)
  result = ''
  str.size.times do |i|
    if first_upper && i.even? || !first_upper && i.odd?
      result << str[i].upcase
    else
      result << str[i].downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!', first_upper: false)
p staggered_case('ALL_CAPS', first_upper: false)
p staggered_case('ignore 77 the 444 numbers', first_upper: false)