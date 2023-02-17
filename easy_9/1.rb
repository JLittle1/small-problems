def greetings(arr, info)
  puts "Hello, #{arr.join(' ')}! Nice to have a #{info[:title]} #{
    info[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
