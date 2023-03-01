require 'date'

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    count += 1 if Date.new(year, month, 13).friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
p friday_13th(2023)

def five_fridays(year)
  fridays = Hash.new(0)
  d = Date.new(year, 1, 1)
  d += 1 until d.friday?
  while d.year == year
    fridays[d.month] += 1
    d += 7
  end
  fridays.values.count { |tally| tally == 5 }
end

p five_fridays(2023)
p five_fridays(2024)