=begin
Initialize an empty array
For the length of the inner arrays X:
  Add a nested empty array
  For the number of inner arrays Y:
    Append the Xth element of the Yth array

=end

def transpose(matrix)
  result = []
  matrix[0].size.times do |x|
    row = []
    matrix.size.times { |y| row << matrix[y][x] }
    result << row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose!(matrix)
  matrix[0].size.times do |x|
    (x...matrix.size).each do |y|
      matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
    end
  end
  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]