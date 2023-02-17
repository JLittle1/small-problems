def xor?(a, b)
  !!(!a != !b && (a || b))
end

# xor might also be useful in a lot of real world situations if you translate
# them to pure logic. For example, if you're making a big dinner, you might
# want to make sure you have a turkey or a pork roast, but not both.

# xor doesn't short circuit because unlike a true value in a `||` expression
# or a false value in a `&&` expression, knowing the first value of a xor
# expression will never give you enough information to know the outcome.