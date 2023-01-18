puts (1..99).select {|i| i.odd?}
1.upto(99) {|i| puts i if i % 2 == 1}