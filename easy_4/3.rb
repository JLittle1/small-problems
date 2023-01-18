def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

# If written as below, it will fail on years divisible by 400.
def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

# Opposite order is more complicated, uses nested if statements.
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end
