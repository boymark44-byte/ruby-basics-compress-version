# A great way to grow your Ruby skills is to implement methods
# built into the language. Of course, the goal is to NOT use the
# original method in your solution; instead, come up with an alternate
# implementation using other methods/approaches.
#
# Define a custom_max method that accepts an array.
# The method should return the largest value in the array.
# If the array is empty, the method should return nil.
# Do not use the max method in your solution!
#
# Examples:
# The => indicates the expected return value
# custom_max([434.12, 723.99, 84.12, 649.92])  => 723.99
# custom_max([8, 10, 2, 1, 19, 4])             => 19
# custom_max(["Tree", "Elm", "Zebra"])         => "Zebra"
# custom_max([])                               => nil

# My own solution:

# Using the built-in max method
def custom_max(array)
  if array.empty?
    nil
  else
    array.max
  end
end

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil

puts

# Using a custom max method
def custom_max(array)
  nil if array.empty?

  largest_value = array[0]

  array.each do |value|
    largest_value = value if value > largest_value
  end

  largest_value
end

puts

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil


puts


# Instructor Solution:
def custom_max(elements)
  nil if elements.length == 0

  max = elements[0]

  elements.each do |element|
    max = element if element > max
  end

  max
end

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4]) # => 19
p custom_max(["Tree", "Elm", "Zebra"]) # => "Zebra"
p custom_max([]) # => nil
