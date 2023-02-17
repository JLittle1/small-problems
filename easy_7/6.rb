def staggered_case(str)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if need_upper
      result << char.upcase
    else
      result << char.downcase
    end
    need_upper = !need_upper if char =~ /[a-zA-Z]/
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case(str, always_switch: false)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if need_upper
      result << char.upcase
    else
      result << char.downcase
    end
    need_upper = !need_upper if char =~ /[a-zA-Z]/ || always_switch
  end
  result
end

p staggered_case('I Love Launch School!', always_switch: true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', always_switch: true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', always_switch: true) == 'IgNoRe 77 ThE 444 NuMbErS'