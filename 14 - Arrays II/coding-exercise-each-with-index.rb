# Define a product_of_number_and_index method that accepts an array of numbers.
# The method should iterate over the elements. For each element,
# it should multiply the element by its index position. It should
# then add that product to a rolling sum. Return the final sum.
# If the array has no elements, the final sum should be 0.
#
# Examples:
# The => indicates the expected return value
# product_of_number_and_index([1, 2, 3]) => (0 * 1) + (1 * 2) + (2 * 3) => 8
# product_of_number_and_index([])        => 0

# My own solution:
def product_of_number_and_index(numbers)
  new_array = []

  numbers.each_with_index do |number, index|
    product = number * index
    new_array << product
  end

  rolling_sum = 0

  new_array.each { |element| rolling_sum += element }

  rolling_sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0


puts


# Instructor Solution:
def product_of_number_and_index(numbers)
  sum = 0

  numbers.each_with_index { |numbers, index| sum += numbers * index }

  sum
end

p product_of_number_and_index([1, 2, 3]) # => 8
p product_of_number_and_index([]) # => 0
