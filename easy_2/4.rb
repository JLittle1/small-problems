print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

remaining = retire_age - age
year = Time.now.year
retire_year = year + remaining

puts "It's #{year}. You will retire in #{retire_year}."
puts "You only have #{remaining} years of work to go!"