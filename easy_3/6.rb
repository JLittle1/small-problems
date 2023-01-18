def xor?(a, b)
  !!(!a != !b && (a || b))
end

# xor might also be useful when checking for discrepencies between 