def fizzbuzz(num1, num2)
  result = []
  num1.upto(num2) do |i|
    if i % 15 == 0 && i % 5 == 0
      result << 'FizzBuzz'
    elsif i % 3 == 0
      result << 'Fizz'
    elsif i % 5 == 0
      result << 'Buzz'
    else
      result << i
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
