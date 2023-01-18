puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_rate = gets.chomp.to_f

tip = bill * (tip_rate / 100)
total = bill + tip
tip = format('%.2f', tip)
total = format('%.2f', total)

puts "The tip is $#{tip}"
puts "The total is $#{total}"