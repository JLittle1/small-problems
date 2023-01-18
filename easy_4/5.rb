def multisum(number)
  sum = 0
  1.upto(number) {|i| sum += i if i % 3 == 0 || i % 5 == 0}
  sum
end

# With inject, can be done on fewer lines, but harder to read/understand
def multisum(number)
  (1..number).inject(0) {|sum, i| i % 3 == 0 || i % 5 == 0 ? sum + i : sum}
end