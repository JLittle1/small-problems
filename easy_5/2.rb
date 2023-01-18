def time_of_day(difference)
  hour = (difference / 60) % 24
  minute = difference % 60
  format('%02d:%02d', hour, minute)
end

# With Ruby's Date class (hour, min, sec) and weekday functionality

SECONDS_PER_MINUTE = 60

def time_of_day(difference)
  # 1/1/0006 is a Sunday
  t = Time.new(6)
  t = t + difference * SECONDS_PER_MINUTE
  t.strftime("%A %H:%M")
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)