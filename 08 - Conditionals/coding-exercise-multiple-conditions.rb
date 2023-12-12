# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4 .
# It should return false otherwise.
#
# Examples
# The => indicates the expected return value
# divisible_by_three_and_four(3)   => false
# divisible_by_three_and_four(4)   => false
# divisible_by_three_and_four(12)  => true
# divisible_by_three_and_four(18)  => false
# divisible_by_three_and_four(24)  => true


# My own solution:
def divisible_by_three_and_four(number)
  if number % 3 == 0 and number % 4 == 0
    true
  else
    false
  end
end

p divisible_by_three_and_four(3) # => false
p divisible_by_three_and_four(4) # => false
p divisible_by_three_and_four(12) # => true
p divisible_by_three_and_four(18) # => false
p divisible_by_three_and_four(24) # => true


puts
# Declare a string_theory method that accepts a string as an argument.
# It should return true if the string has more than 4 characters
# or if the string includes the character "B" (capital).
#
# Examples
# The => indicates the expected return value
# string_theory("Big Mac")      => true
# string_theory("Bank")         => true
# string_theory("refrigerator") => true
# string_theory("boy")          => false
# string_theory("car")          => false


# My own solution:
def string_theory(string)
  if string.include?("B") or string.length > 4
    true
  else
    false
  end
end

p string_theory("Big Mac") # => true
p string_theory("Bank") # => true
p string_theory("refrigerator") # => true
p string_theory("boy") # => false
p string_theory("car") # => false


puts


# Instructor Solution:

def divisible_by_three_and_four(number)
  divisible_by_three = number % 3 == 0
  divisible_by_four = number % 4 == 0

  divisible_by_three and divisible_by_four
end

p divisible_by_three_and_four(3)
p divisible_by_three_and_four(4)
p divisible_by_three_and_four(12)
p divisible_by_three_and_four(18)
p divisible_by_three_and_four(24)


puts


def string_theory(text)
  text.length > 4 || text.include?("B")
end

p string_theory("Big Mac")
p string_theory("Bank")
p string_theory("refrigerator")
p string_theory("boy")
p string_theory("car")

