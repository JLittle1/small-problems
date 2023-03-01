def longest_sentence(filename)
  sentences = File.read(filename).split(/\.|\?|!/)
  sentences.size.times { |i| sentences[i] = sentences[i].split }
  longest = sentences.max_by { |sentence| sentence.size }
  puts longest.join(' ')
  puts longest.size
end

def longest_sentence(filename)
  text = File.read(filename)
  statements = []
  text.split('.') { |sentence| statements << sentence + '.' }
  questions = []
  statements.each do |text|
    text.split('?') { |sentence| questions << sentence + '?' }
  end
  questions.flatten!
  exclamations = []
  questions.each do |text|
    text.split('!') { |sentence| exclamations << sentence + '!' }
  end
  sentences = questions
  p sentences
  sentences.map!(&:split)
  p sentences
  longest = sentences.max_by { |sentence| sentence.size }
  puts longest.join(' ')
  puts longest.size
end

longest_sentence('example.txt')
#longest_sentence('pg84.txt')