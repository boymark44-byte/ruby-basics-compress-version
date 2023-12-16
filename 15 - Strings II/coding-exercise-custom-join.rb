# Define a custom_join method that accepts an array of strings
# and a delimiter. The method should merge/join the array elements
# together into a single string. It should insert the delimiter
# in between every two subsequent elements. Do not use the
# built-in join method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_join(["red", "green", "blue"], "!") => "red!green!blue"
# custom_join(["Big", "Mac"], "$$")          => "Big$$Mac"
# custom_join([], "$$$")                     => ""

# My own solution:
def custom_join(strings, delimiter)
  results = ""

  strings.each_with_index do |string, index|
    results << string
    results << delimiter if index != strings.length - 1
  end

  results
end

p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""


puts


# Instructor solution:
def custom_join(elements, delimiter)
  result = ""
  last_index = elements.length - 1

  elements.each_with_index do |element, index|
    result << element
    result << delimiter unless index == last_index
  end

  result
end

p custom_join(["red", "green", "blue"], "!") # => "red!green!blue"
p custom_join(["Big", "Mac"], "$$") # => "Big$$Mac"
p custom_join([], "$$$") # => ""
