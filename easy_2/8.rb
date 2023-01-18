puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

if operator == 's'
  result = 1.upto(number).sum
  puts "The sum of the integers between 1 and #{number} is #{result}."
elsif operator == 'p'
  result = 1.upto(number).reduce {|product, i| product * i}
  puts "The product of the integers between 1 and #{number} is #{result}."
else
  puts "Error. Unknown operation."
end