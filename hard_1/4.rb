def transpose(matrix)
  result = []
  matrix[0].size.times do |x|
    row = []
    matrix.size.times { |y| row << matrix[y][x] }
    result << row
  end
  result
end

# I actually did use a dynamic solution in the previous exercise, and solved
# this one too.