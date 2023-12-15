# Define a split_in_two method that accepts an array.
# I'd like to split the array into two arrays.
# If the original array has an even number of elements,
# ensure that the 2 new arrays have an equal number of elements
# If the original array has an odd number of elements,
# ensure that the first new array has the greater number of elements.
#
# Examples:
# The => indicates the expected return value
# split_in_two(["A", "B"])                => [["A"], ["B"]]
# split_in_two(["A", "B", "C", "D"])      => [["A", "B"], ["C", "D"]]
# split_in_two(["A", "B", "C"])           => [["A", "B"], ["C"]]
# split_in_two(["A", "B", "C", "D", "E"]) => [["A", "B", "C"], ["D", "E"]]


# My own solution:
def split_in_two(array)
  # Store the length of the array
  length = array.length

  if length.even? # If the length is even?
    # The first half will contain the half of the elements.
    first_half = array[0, length / 2]

    # The second half will contain the other half.
    second_half = array[length / 2, length / 2]
  else # If the length is odd?
    # The first will contain half of the elements + 1
    first_half = array[0, length / 2 + 1]

    # The second half will contain the other half of the elements
    second_half = array[length / 2 + 1, length / 2]
  end

  # Returns an array containing two halves
  [first_half, second_half]
end


p split_in_two(["A", "B"]) # => [["A"], ["B"]]
p split_in_two(["A", "B", "C", "D"]) # => [["A", "B"], ["C","D"]]
p split_in_two(["A", "B", "C"]) # => [["A", "b"], ["C"]]
p split_in_two(["A", "B", "C", "D", "E"]) # => [["A", "B", "C"],["D","E"]]


puts


# Instructor Solution:
def split_in_two(values)
  number_of_elements = values.length
  midpoint = (number_of_elements / 2.0).ceil

  # The first array includes the elements from the beginning of the original array up to the midpoint.
  # The second array includes the elements from the midpoint to the end of the original array.
  [
    values.first(midpoint),
    values.last(number_of_elements - midpoint)
  ]
end

p split_in_two(["A", "B"]) # => [["A"], ["B"]]
p split_in_two(["A", "B", "C", "D"]) # => [["A", "B"], ["C", "D"]]
p split_in_two(["A", "B", "C"]) # => [["A", "B"], ["C"]]
p split_in_two(["A", "B", "C", "D", "E"]) # => [["A", "B", "C"], ["D", "E"]]
