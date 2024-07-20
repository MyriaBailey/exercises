=begin

=end

# require 'expect'

def longest_sentence_counter(file_name)
  highest_count = 0
  longest_sentence = ''

  IO.foreach(file_name) do |line|
    puts line
  end
end

longest_sentence_counter("text_doc.txt")