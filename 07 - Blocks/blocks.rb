# Introduction to Blocks
puts "\nIntroduction to Blocks in Ruby: "

=begin
A block is a procedure or collection of code that is enclose in either curly braces{}
or "do-end". They can be passed to methods as arguments and often used in
encapsulating and organizing sections of code.
=end

# Single-line block
5.times { puts "Ruby is awesome!" }

puts

# Multi-line block
3.times do
  puts "Ruby is awesome!"
end

puts

blocks = 4.times do
  puts "Ruby is awesome!"
  puts "I'm having fun learning it!"
end

puts blocks



# =========================================================================== #



# Block Variables in Ruby
puts "\nBlock Variables in Ruby: "

# |count| tracks the no. of iteration we are on.
3.times { |count| puts count }

puts

3.times do |running_count|
  puts "The current count is #{running_count}"
  puts "Mark is awesome!"
end



# ============================================================================ #



# The upto and downto methods in Ruby
puts "\nThe upto and downto methods in Ruby: "

# Go from 5 upto 10
5.upto(10) { |current| puts "The loop in now on: #{current}" }

puts

# Count from 6 downto 1
6.downto(1) { |current| puts "Countdown: #{current}" }

puts

99.downto(1) do |number|
  puts "#{number} bottles of beer on the wall, #{number} bottles of beer."
  puts "Take one down, pass it around."
  puts "#{number - 1} bottles of beer on the wall."
end



# ============================================================================ #



# The step method in Ruby
puts "\nThe step method in Ruby: "

# The steps or intervals
1.step(100, 5) { |number| puts "#{number}" }

puts

1.step(50, 7) do |number|
  puts "Alright, let's go up by 7!"
  puts "I'm now on #{number}"
end
