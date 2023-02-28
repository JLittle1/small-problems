def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 # Added conditional expression
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
This method didn't have the intended conditional expression for the `elsif`
branch on line 4, so it was evaluating the `map` call on line 5 to determine
whether the `elsif` branch would execute. Because `map` will always return a
truthy value, the `else` branch would never get to execute. Additionally,
because the `map` invocation was being used as the conditional expression, not
the return value, the `elsif` branch wasn't supplied a return value, and so
always returned `nil`.
=end
