# Define a custom_split method that accepts a piece of text and a delimiter.
# The method should return an array of the segments of the text
# after being split by the delimiter. Your solution should NOT
# use the built-in split method on a string. Assume that the delimiter
# will never be an empty string.
#
# Examples:
# The => indicates the expected return value
# custom_split("Hi, my name is Boris", " ")  => ["Hi,", "my", "name", "is", "Boris"]
# custom_split("ravioli is delicious", "i")  => ["rav", "ol", " ", "s del", "c", "ous"]
# custom_split("Zebra", "j")                 => ["Zebra"]
# custom_split(" hello", " ")                => ["hello"]

# My own solution:
def custom_split(text, delimiter)
  result = []
  segment = ""

  text.each_char do |char|
    if char == delimiter
      result << segment unless segment.empty?
      segment = ""
    else
      segment << char
    end
  end

  result << segment unless segment.empty?
  result
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]


puts


# Instructor solution:
def custom_split(text, delimiter)
  results = []
  current_segment = ""

  text.each_char do |character|
    if character == delimiter
      results << current_segment if current_segment.length > 0
      current_segment = ""
    else
      current_segment << character
    end
  end

  results << current_segment if current_segment.length > 0
  results
end

p custom_split("Hi, my name is Boris", " ") # => ["Hi,", "my", "name", "is", "Boris"]
p custom_split("ravioli is delicious", "i") # => ["rav", "ol", " ", "s del", "c", "ous"]
p custom_split("Zebra", "j") # => ["Zebra"]
p custom_split(" hello", " ") # => ["hello"]
