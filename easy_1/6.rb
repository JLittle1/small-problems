def triangle(side_length)
  (1..side_length).each { |width| puts ('*' * width).rjust(side_length) }
end

triangle(5)
triangle(9)

# Upside-down
def triangle(side_length)
  (0...side_length).each { |width| puts (' ' * width).ljust(side_length, '*') }
end

triangle(5)
triangle(9)

# Any angle
def triangle(length, right_angle)
  case right_angle
  when :tl
    (0...length).each { |width| puts (' ' * width).rjust(length, '*') }
  when :tr
    (0...length).each { |width| puts (' ' * width).ljust(length, '*') }
  when :bl
    (1..length).each { |width| puts ('*' * width).ljust(length) }
  when :br
    (1..length).each { |width| puts ('*' * width).rjust(length) }
  end
end

triangle(5, :tl)
triangle(5, :tr)
triangle(5, :bl)
triangle(5, :br)