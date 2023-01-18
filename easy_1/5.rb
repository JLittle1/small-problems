require 'pry'

def print_in_box(text)
  line_1 = '+-' + '-' * text.size + '-+'
  line_2 = '| ' + ' ' * text.size + ' |'
  line_3 = '| ' + text + ' |'
  puts line_1, line_2, line_3, line_2, line_1
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Truncates
def print_in_box(text)
  text = text[0, 76]
  line_1 = '+-' + '-' * text.size + '-+'
  line_2 = '| ' + ' ' * text.size + ' |'
  line_3 = '| ' + text + ' |'
  puts line_1, line_2, line_3, line_2, line_1
end

print_in_box('To boldly go where no one has gone before.' * 5)
print_in_box('')

# Wraps
def print_in_box(text)
  words = text.split
  lines = []
  
  current_line = '| '
  until words.empty?
    current_line << words.shift + ' '
    if words.empty? || current_line.size + words[0].size >= 79
      current_line = current_line.ljust(79)
      current_line << '|'
      lines << current_line
      current_line = '| '
    end
  end

  lines << '|  |' if lines.empty?

  max_length = text[0, 76].size

  line_1 = '+-' + '-' * max_length + '-+'
  line_2 = '| ' + ' ' * max_length + ' |'

  puts line_1, line_2
  lines.each { |line| puts line }
  puts line_2, line_1
end

print_in_box('To boldly go where no one has gone before.' * 5)
print_in_box('')