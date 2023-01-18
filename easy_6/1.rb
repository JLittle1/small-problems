DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

=begin
# This is my original, clunky attempt

def dms(number)
  degrees = number.to_i
  minutes = (60 * (number - degrees)).to_i
  remain = (60 * (number - degrees)) - minutes
  seconds = (60 * remain).round
  if seconds == 60
    seconds = 0
    minutes += 1
  end
  if minutes == 60
    minutes = 0
    degrees += 1
  end
  degrees -= 360 while degrees >= 360
  minutes, seconds = format('%02d', minutes), format('%02d', seconds)
  degrees.to_s + DEGREE + minutes + "'" + seconds + '"'
end
=end

def dms(number)
  total_seconds = (number * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  degrees -= 360 while degrees >= 360
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(1081)