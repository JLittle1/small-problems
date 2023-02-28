def longest_sentence(filename)
  sentences = File.read(filename).split(/\.|\?|!/)
  sentences.size.times { |i| sentences[i] = sentences[i].split }
  longest = sentences.max_by { |sentence| sentence.size }
  puts longest.join(' ')
  puts longest.size
end

longest_sentence('example.txt')
longest_sentence('pg84.txt')