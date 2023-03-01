=begin
[0][0] => [0][2]
[0][2] => [2][2]
[2][2] => [2][0]
[2][0] => [0][0]

[0][1] => [1][2]
[1][2] => [2][1]
[2][1] => [1][0]
[1][0] => [0][1]

Turn each column into a row from the bottom up

Given a 2d array of arrays `matrix`
Initialize an empty array `result`
For the length of the inner arrays of `matrix` `x`
  Make a new `row` array
  For the length of `matrix` `y`, starting from length-1 going to 0
    Append the xth element of the yth array to row
  Append row to matrix
return matrix
=end

def rotate90(matrix)
  result = []
  matrix[0].size.times do |x|
    row = []
    (matrix.size - 1).downto(0) { |y| row << matrix[y][x] }
    result << row
  end
  result
end

def rotate(matrix, degrees=90)
  rotations = (degrees / 90 % 4)
  rotations.times do
    matrix = rotate90(matrix)
  end
  matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate(matrix1)
new_matrix2 = rotate(matrix2, 180)
new_matrix3 = rotate(matrix1, 720)

p new_matrix1
p new_matrix2
p new_matrix3 == matrix1