def diamond(n)
  width = -1
  until width == n
    width += 2
    puts ('*' * width).center(n)
  end
  until width == 1
    width -= 2
    puts ('*' * width).center(n)
  end
end

diamond(5)
diamond(9)

def diamond(n)
  width = -1
  until width == n
    width += 2
    puts make_line(width, n)
  end
  until width == 1
    width -= 2
    puts make_line(width, n)
  end
end

def make_line(width, row_size)
  shape = (' ' * width)
  shape[0] = '*'
  shape[-1] = '*'
  shape.center(row_size)
end

diamond(5)
diamond(9)