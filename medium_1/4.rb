def lights(n)
  switches = [false] * n
  1.upto(n) do |divisor|
    switches.each_with_index do |switch, idx|
      switches[idx] = !switch if (idx + 1) % divisor == 0
    end
  end
  (1..n).to_a.zip(switches).select{ |_, switch| switch }.map{ |num, _| num }
end

# This alternative solution calculates the squares up to `n` directly.
def lights(n)
  result = []
  number = 1
  i = 1
  while number <= n
    result << number
    i += 1
    number = i ** 2
  end
  result
end

def display_lights(n)
  turned_on = lights(n).map(&:to_s)
  turned_off = ((1..n).to_a - turned_on).map(&:to_s)

  turned_on = join_and(turned_on)
  turned_off = join_and(turned_off)

  if turned_off.empty?
    puts 'every light is turned on'
  else
    puts "light#{turned_off} now off; #{turned_on} on."
  end
end

def join_and(arr)
  return ' ' + arr[0] + ' is' if arr.size == 1
  return 's ' + arr[0] + ' and ' + arr[1] + ' are' if arr.size == 2
  's ' + arr[0...-1].join(', ') + ', and ' + arr[-1] + ' are'
end

display_lights(1)
display_lights(2)
display_lights(3)
display_lights(4)
display_lights(5)
display_lights(20)