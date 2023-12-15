# Define a first_and_last method that accepts an array of strings.
# The method should concatenate the first element and the last element
# and return the result.
# Assume the list will always have 1 or more elements.
#
# Examples
# The => indicates the expected return value
# first_and_last(["a", "b", "c"])        => "ac"
# first_and_last(["bob", "tom", "rob"])  => "bobrob"
# first_and_last(["a"])                  => "aa"


# My own solution:
def first_and_last(string_or_char)
  string_or_char[0] + string_or_char[-1]
end

p first_and_last(["a", "b", "c"]) # => "ac"
p first_and_last(["bob", "tom", "rob"]) # => "bobrob"
p first_and_last(["a"]) # => "aa"


puts
# Define a product_of_even_indices method that accepts an
# array of numbers. The array will always have 6 total elements.
# The method should return the product (multiplied total) of
# all numbers at an even index (0, 2, 4).
#
# Examples
# The => indicates the expected return value
# product_of_even_indices([1, 2, 3, 4, 5, 6])    =>  15
# product_of_even_indices([3, 4, 3, 5, 3, 6])    =>  27

def product_of_even_indices(array_of_num)
  array_of_num[0] * array_of_num[2] * array_of_num[4]
end

p product_of_even_indices([1, 2, 3, 4, 5, 6]) # => 15
p product_of_even_indices([3, 4, 3, 5, 3, 6]) # => 27


puts
# Define a first_letter_of_last_string method that accepts an
# array of strings. It should return one character: the first
# letter of the last string in the array.
# Assume the array will always have at least one string.
#
# Examples
# The => indicates the expected return value
# first_letter_of_last_string(["cat", "dog", "zebra"]) => "z"
# first_letter_of_last_string(["nonsense"])            => "n"

def first_letter_of_last_string(array_of_string)
  last_string = array_of_string[-1]

  last_string[0]
end

p first_letter_of_last_string(["cat", "dog", "zebra"]) # => "z"
p first_letter_of_last_string(["nonsense"])            # => "n"


puts


# Instructor Solution:
def first_and_last(elements)
  elements[0] + elements[-1]
end

puts first_and_last(["a", "b", "c"]) # => ac
puts first_and_last(%w[bob tom rob]) # => bobrob
puts first_and_last(["a"]) # => aa

puts

def product_of_even_indices(numbers)
  numbers[0] * numbers[2] * numbers[4]
end

puts product_of_even_indices([1, 2, 3, 4, 5, 6]) # => 15
puts product_of_even_indices([3, 4, 3, 5, 3, 6]) # => 27

puts

def first_letter_of_last_string(elements)
  elements[-1][0] # Using 2D approach
end

p first_letter_of_last_string(%w[cat dog zebra]) # => "z"
p first_letter_of_last_string(["nonsense"]) # => "n"
