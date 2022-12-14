print "What is your name? "
n = gets.chomp
age = rand(20..200)
n = "Teddy" if n.empty?
puts "#{n} is #{age} years old!"