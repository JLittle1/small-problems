def lights(n)
  switches = [false] * n
  1.upto(n) do |divisor|
    switches.each_with_index do |switch, idx|
      switches[idx] = !switch if (idx + 1) % divisor == 0
    end
  end
  (1..n).to_a.zip(switches).select{ |_, switch| switch }.map{ |num, _| num }
end

p lights(5)
p lights(10)

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

p lights(5)
p lights(1000)