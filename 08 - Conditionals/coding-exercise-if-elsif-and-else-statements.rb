# Declare a numeric_energy method that accepts a number.
# If the number is positive, return the string "Positive"
# If the number is negative, return the string "Negative"
# If the number is zero, return the string "Zero Hero"
#
# Examples
# The => indicates the expected return value
# numeric_energy(5)    => "Positive"
# numeric_energy(10)   => "Positive"
# numeric_energy(-5)   => "Negative"
# numeric_energy(-8)   => "Negative"
# numeric_energy(0)    => "Zero Hero"


# My own solution:
def numeric_energy(number)
  if number.positive?
    "Positive"
  elsif number.negative?
    "Negative"
  else
    "Zero Hero"
  end
end

p numeric_energy(5) # => "Positive"
p numeric_energy(10) # => "Positve"
p numeric_energy(-5) # => "Negative"
p numeric_energy(-8) # => "Negative"
p numeric_energy(0) # => "Zero Hero"


puts


# Another way:
def numeric_energy(number)
  if number > 0
    "Positive"
  elsif number < 0
    "Negative"
  else
    "Zero Hero"
  end
end

p numeric_energy(5)
p numeric_energy(10)
p numeric_energy(-5)
p numeric_energy(-8)
p numeric_energy(0)


puts


# Instructor Solution:
def numeric_energy(number)
  if number > 0
    "Positive"
  elsif number < 0
    "Negative"
  else
    "Zero Hero"
  end
end

p numeric_energy(5)
p numeric_energy(10)
p numeric_energy(-5)
p numeric_energy(-8)
p numeric_energy(0)
