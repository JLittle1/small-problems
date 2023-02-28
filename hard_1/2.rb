=begin
Given an odd integer `n` that is >= 7, draw an 8-pointed star to the console that is `n` lines long. The `n / 2 + 1`th line is `n` stars long; the rows above and below that 'center' are three `*`s centered in `n` length whitespace; then seperated by 1 space, then 2, then 3...

star(9)
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

Make strings representing each line of the output.

- `(n - 1) / 2` times do:
  - Print *X*X*, where X is `(n - 3) / 2`
  - Print *X*X*, where X is `(n - 5) / 2`
  - ...
- Print `*` * `n`
- `(n - 1) / 2` times do:
  - Print *X*X*, where X is 0
  - Print *X*X*, where X is 1
  - ...
=end

def star(n)
  (n / 2).times do |i|
    space = ' ' * ((n - 3 - 2 * i) / 2)
    puts "*#{space}*#{space}*".center(n)
  end
  puts ('*' * n)
  (n / 2).times do |i|
    space = ' ' * i
    puts "*#{space}*#{space}*".center(n)
  end
end

star(9)
star(21)
star(7)