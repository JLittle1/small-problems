def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  end
end

# When the US adopted the Gregorian calendar in 1752, it skipped 11 days of
# September, going directly from 9/2/1752 to 9/14/1752.