def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# The -number.abs solution may not necessarily be better because it's harder to
# read and understand at a glance.