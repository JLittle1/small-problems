HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours = hours % HOURS_PER_DAY
  hours * MINUTES_PER_HOUR + minutes
end

def before_midnight(time)
  (MINUTES_PER_DAY - after_midnight(time)) % MINUTES_PER_DAY
end

p after_midnight('00:00')
p after_midnight('12:34')
p after_midnight('24:00')
p before_midnight('00:00')
p before_midnight('12:34')
p before_midnight('24:00')