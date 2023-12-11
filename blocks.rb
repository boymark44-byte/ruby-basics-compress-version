# Single-line Block
5.times { puts "Hello" }


puts


# Multi-line Block
value = 3.times do # We can store a block inside a variable
  puts "Ruby is awesome"
end

puts value


puts


# Single-line block with block variable
3.times { |count| puts count } # Printing every iteration


puts


# Multi-line block with block variable
3.times do |current_count|
  puts "The current count is #{current_count}"
  puts "Ruby is awesome"
end


puts


# Coding Exercise - Declaring a block inside of a custom method.
def print_five_times
  5.times { puts "Print this 5 times."}
end

print_five_times


def money_printer(amount)
  amount.times { puts "Money"}
end

money_printer(5)
puts
money_printer(3)
puts


def increments_of_two
  # 0, 1, 2, 3, 4, 5
  # 0, 2, 4, 6, 8, 10
  6.times { |count| print count * 2}
end

increments_of_two
