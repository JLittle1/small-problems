print 'What is your name? '
name = gets
name.chomp!
unless name[-1] == '!'
  puts "Hello #{name}."
else
  name = name.chop!.upcase!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
end