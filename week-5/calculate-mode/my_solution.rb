# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
	# The input is an array of numbers or strings

# What is the output? (i.e. What should the code return?)
	# The code should return an array of the input value that has the most frequent occurence.
	# If the input-values have an equal number of occurences, the original array should be returned.

# What are the steps needed to solve the problem?
	# GROUP the array by the number of occurences of a value.
	# RETURN the set of values with the highest number of occurences.


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
=begin

Which data structure did you and your pair decide to implement and why?

We decided on using a hash to find the key with the highest number of occurances. From there 
we were able to use the select method for hashes to find the value that had the most 
occurances and then we returned its key(s).

Were you more successful breaking this problem down into implementable pseudocode 
than the last with a pair?

We tried to use our pseudocode solution but we ended up getting stuck for quite some 
time. It was only when we tried our new solution did we begin to get results.

What issues/successes did you run into when translating your pseudocode to code?

We found the method .group_by and we were trying to figure out what to do after we
grouped the array into a hash for quite some time. We eventually felt stuck and decided 
to take a different approach, as shown above in the solutions.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

To iterate through the array we just used the .each method, but to iterate through 
the hash we used .select! since we needed to select the keys  that had the highest 
number of occurances as values.

=end