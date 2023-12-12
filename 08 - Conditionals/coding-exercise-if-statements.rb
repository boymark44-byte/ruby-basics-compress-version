# Define a even_or_odd_operations method that accepts an integer.
# If the integer is even, the method should return the number + 2
# If the integer is odd, the method should return the number - 3
#
# Examples:
# The => indicates the expected return value
# even_or_odd_operations(2)    => 4
# even_or_odd_operations(0)    => 2
# even_or_odd_operations(13)   => 10
# even_or_odd_operations(9)    => 6


# My own solution:
def even_or_odd_operations(integer)
  if integer.odd?
    integer - 3
  else
    integer + 2
  end
end

p even_or_odd_operations(2) # => 4
p even_or_odd_operations(0) # => 2
p even_or_odd_operations(13) # => 10
p even_or_odd_operations(9) # => 6


puts


# Instructor Solution:
def even_or_odd_operations(number)
  if number.even?
    return number + 2
  else
    return number - 3
  end
end

puts even_or_odd_operations(2) # => 4
puts even_or_odd_operations(0) # => 2
puts even_or_odd_operations(13) # => 10
puts even_or_odd_operations(9) # => 6


puts


# optimized the code:
def even_or_odd_operations(number)

  if number.even?
    return number + 2
  end

  number - 3
end

p even_or_odd_operations(2) # => 4
p even_or_odd_operations(0) # => 2
p even_or_odd_operations(13) # => 10
p even_or_odd_operations(9) # => 6
