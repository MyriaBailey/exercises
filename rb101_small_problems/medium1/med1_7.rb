=begin
Word to Digit

Rules
I: A string input
O: A returned string, replacing number words w/ their corresponding digit

Examples/Test Cases
word_to_digit('Please call me at five five five one two three four. Thanks.') 
  == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data Structures
- A string separated into arr of words
  - analyzed based on ONLY its alphabetical characters (downcased!)
    - don't remove punctuation. just substitute the letters

Algorithms
A method that takes a string
- arr words from split string
- map each word of that string such that
  - if the downcased letters of the string EXACTLY MATCH a num
    - call substitution method on orig word
  - else, return as-is

=end

def word_to_digit(str)
  numbers = %w{ zero one two three four five six seven eight nine }

  str.split.each do |word|
    letters_only = word.downcase.delete('^a-z')
    if numbers.include?(letters_only)
      word.gsub!(letters_only, which_num(letters_only))
    end
  end.join(' ')
end

def which_num(num_word)
  case num_word
  when 'zero'   then '0'
  when 'one'    then '1'
  when 'two'    then '2'
  when 'three'  then '3'
  when 'four'   then '4'
  when 'five'   then '5'
  when 'six'    then '6'
  when 'seven'  then '7'
  when 'eight'  then '8'
  when 'nine'   then '9'
  else               'error'
  end
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
Concluding Notes:
- Could have used a hash of number words => integer strings to simplify
- regex could also have simplified looking for complete words instead of
  substrings by using `/\b#{word}\b/`

Further Exploration
- Already accounted for upper/lowercase words
- Otherwise, removing spaces between CONVERTED numbers and accounting
  for phone numbers will wait for another day (but not today).