def century(year)
  number = (((year - 1) / 100) + 1).to_s
  if %w(11 12 13).member?(number[-2..-1])
    suffix = 'th'
  else
    suffix = case number[-1]
    when '1' then 'st'
    when '2' then 'nd'
    when '3' then 'rd'
    else 'th'
    end
  end
  number + suffix
end