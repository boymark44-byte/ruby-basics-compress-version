# Using the range statement and step method
puts (0..10).step(2).to_a.join


def increments_of_two
  0.step(10, 2) { |num| print "#{num}" } # => 0246810
end

increments_of_two


puts


# Using the upto method
def increments_of_two
  0.upto(10) do |i|
    print i if i.even?
  end
end

increments_of_two


puts


# Using the times method
def increments_of_two
  result = ""

  0.upto(10) do |i|
    result << i.to_s if i.even?
  end

  result
end

puts increments_of_two


puts


# Instructor Solution:
def increments_of_two
  # 0, 1, 2, 3, 4, 5
  # 0, 2, 4, 6, 8, 10
  6.times { |count| print count * 2 }
end

increments_of_two
