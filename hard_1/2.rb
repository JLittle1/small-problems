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

def circle(n)
  edge_length = case (n % 4)
                when 0 then n / 2
                when 1 then n / 2 + 1
                when 2 then n / 2 - 1
                when 3 then n / 2
                end
  puts ('*' * edge_length).center(n)

  (n - edge_length - 3).times do |i|
    puts "*#{' ' * (edge_length + i * 2)}*".center(n)
  end

  (n - edge_length - 2).times { puts "*#{' ' * (n - 1)}*" }
end

=begin
4 - 2
5 - 3
6 - 2
7 - 3

First is `case(n % 4)

4
 ** 
*  *
*  *
 **
5
 ***
*   *
*   *
*   *
 ***
6
  **  
 *  *
*    *
*    *
 *  *
  **
7
  ***  
 *   *
*     *
*     *
 *   * 
  ***
8
  ****  
 *    *
*      *
*      *
*      *
*      *
 *    *
  ****
9
  *****
 *     *
*       *
*       *
*       *
*       *
*       *
 *     *
  *****

  =end
