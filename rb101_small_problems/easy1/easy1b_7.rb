# Madlibs

# Input: Different one-word strings
# Output: Prompts for those strings, and a constructed sentence printed

# Rules
# - Writing a mad-lib program
# - Prompt for a noun, verb, adjective, and adverb
# - Create a sentence using each of the four parts of speech provided

# Examples/Test Cases

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
# 
# Do you walk your blue dog quickly? That's hilarious!

# Data Structures
# - Stored strings for each part of speech
#   - An array? hash?

# Algorithms
# - Initialize each word variable in a hash
# - For each symbol key in the hash:
#   - Prompt for the new value
#   - Store received value as the key's value
# - Print a string using string interpolation of the hash values

# Code

words = {noun: '', verb: '', adjective: '', adverb: ''}

words.each_pair do |key, val|
  puts "Enter a #{key}: "
  val << gets.chomp
end

puts "Do you #{words[:verb]} your #{words[:adjective]} #{words[:noun]} "\
      "#{words[:adverb]}? That's hilarious!"

# Concluding Notes
# - Lots of forgotten syntax this run around!
# - Need to remember the long-form method syntax (the do/end w/ arguments)
# - Also forgot that '' does not allow for string interpolation while
#     "" does allow for it
# - Also learned that for extra long strings, no concatenation needed!
#   - Just end quote with \ and carry on w/ new quote
# - Reminder regarding variable scope still applying for the each method