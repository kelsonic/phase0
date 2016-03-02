# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
def total(num_array)
  sum = 0
  num_array.each do |num|
    sum = sum + num
  end
  p sum
end

# 3. total refactored solution
def total(num_array)
  num_array.inject(0) {|sum, x| sum + x }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
# Define the method
# Take an array of strings as input
# Initialize new string
# Loop through the input array
# Append each element to the new string
# Capitalize new string and append '.'
# print new string
# End the method

# 5. sentence_maker initial solution
def sentence_maker(string_array)
  
  string = ""
  string_array.each do |x|
    if x == string_array.last
      string = string + x.to_s
    else
      string = string + x.to_s + ' '
    end
  end
  p string.capitalize! + '.'
end

# 6. sentence_maker refactored solution
def sentence_maker(string_array)
  p string_array.join(" ").capitalize! + '.'
end