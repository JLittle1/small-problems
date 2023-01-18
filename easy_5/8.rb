ZERO_TO_NINETEEN = %w(zero, one, two, three, four, five, six, seven, eight, 
                      nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
                      sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(integers)
  integers.sort { |a, b| ZERO_TO_NINETEEN[a] <=> ZERO_TO_NINETEEN[b] }
end

p alphabetic_number_sort((0..19).to_a)

# Array#sort_by! would mutate the argument.