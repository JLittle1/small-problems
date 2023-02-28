FILENAME = 'template.txt'
ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)

madlib = File.read(FILENAME)
madlib.gsub!('%{adjective}') { |match| ADJECTIVES.sample }
madlib.gsub!('%{noun}') { |match| NOUNS.sample }
madlib.gsub!('%{verb}') { |match| VERBS.sample }
madlib.gsub!('%{adverb}') { |match| ADVERBS.sample }
puts madlib
