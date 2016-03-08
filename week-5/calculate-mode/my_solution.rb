# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# def mode(array)
  
#   include Enumerable
#   count = Hash.new 0
  
#   array.each do |element|
#     count[element] += 1
#   end
  
#   highest_freq = count.values.max
#   count.select! {|k,v| v == highest_freq}
#   p count.keys
  
# end

# 3. Refactored Solution
def mode(array)
  
  include Enumerable
  # Create a hash
  freq = Hash.new 0
  
  # For each element in array add 1 to its value
  array.each do |element|
    freq[element] += 1
  end
  
  # Highest freq will return max value in freq hash
  highest_freq = freq.values.max
  # The select method only retains the pairs that have values that equal the highest freq
  p freq.select! {|k,v| v == highest_freq}.keys
  
end

# 4. Reflection