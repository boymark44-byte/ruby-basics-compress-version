# Define a longest_word method that accepts a string.
# The method should return the longest word in the string.
# If two words are tied for maximum length, the method should
# return the last word in the phrase with that length.
# You can assume:
#  - Every two words are separated by a single space
#  - The string does not contain any symbols or characters
#
# Examples:
# The => indicates the expected return value
# longest_word("Bobby loves big scary kangaroos too")  => "kangaroos"
# longest_word("Ruby is my favorite language")         => "language"
# longest_word("Hello")                                => "Hello"]

# My own solution:
def longest_word(strings)
  words = strings.split(" ")

  longest_word = ""
  max_length = 0

  words.each do |word|
    if word.length >= max_length
      longest_word = word
      max_length = word.length
    end
  end

  longest_word
end

p longest_word("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word("Ruby is my favorite language") # => "language"
p longest_word("Hello") # => "Hello"


puts


# Instructor Solution:
def long_word(phrase)
  words = phrase.split(" ")
  longest_word_in_phrase = words[0]

  words.each do |word|
    if word.length >= longest_word_in_phrase.length
      longest_word_in_phrase = word
    end
  end

  longest_word_in_phrase
end

p longest_word("Bobby loves very big scary kangaroos too") # => "kangaroos"
p longest_word("Ruby is my favorite language") # => "language"
p longest_word("Hello") # => "Hello"
