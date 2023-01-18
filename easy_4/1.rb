def short_long_short(a, b)
  shorter = a.size < b.size ? a : b
  longer = a.size > b.size ? a : b
  shorter + longer + shorter
end