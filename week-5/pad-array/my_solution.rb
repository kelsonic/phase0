# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An array, a minimum size, and a padding value
# What is the output? A modified array that is min_size and is padded with the inputted value
# What are the steps needed to solve the problem?
# If the array's length is greater than or equal to the minimum size
# => Return the original array
# Otherwise
# WHILE the array's length is less than the minimum size
# Add the padding to the array for as long as the array is
# Return the modified array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  
  if array.length >= min_size 
    p array
  else
    
    while array.length < min_size
      array = array.push(value)
    end 
    
    p array
  end
  
end


def pad(array, min_size, value=nil) #non-destructive
  
  new_array = Array.new(array)
  if new_array.length >= min_size 
    p new_array
  else
    while new_array.length < min_size
      new_array = new_array.push(value)
    end 
       
    p new_array 
  end
  
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  
  # If the array's size is less than the minimum size, return the original array
  if array.length >= min_size 
    p array
    
  else
    
    # Until the array's length is the minimum size, add on the value
    while array.length < min_size
      array = array.push(value)
    end 
    
    # Print and return the modified array
    p array
  end
  
end


def pad(array, min_size, value=nil) #non-destructive
  
  # Create separate array to leave inputted array untouched
  new_array = Array.new(array)
  
  # If the array's size is less than the minimum size, return the original array
  if new_array.length >= min_size 
    p new_array
    
  else
    
    # Until the array's length is the minimum size, add on the value
    while new_array.length < min_size
      new_array = new_array.push(value)
    end 
    
    # Print and return the modified array
    p new_array 
  end
  
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

Yes, but it was very difficult and we took quite a long time to understand how to make 
the function pass the tests with and without destroying the original array.

Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?

Yes. However, our initial solution was not correct so we had to go back to the pseudocode 
multiple times to figure out how to rework our solution. We must have spent nearly 3 
hours on the assignment since we kept on having trouble not destroying the original array.

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?

Yes. It's successful because we made sure to create a duplicate array of the inputted array 
so that we did not modify the original and, thus, destroy it.

When you refactored, did you find any existing methods in Ruby to clean up your code?

No. However, we did add comments to ensure that other developers can read our solution 
more easily.

How readable is your solution? Did you and your pair choose descriptive variable names?

Perhaps we could have been a bit more descriptive for the variable names, but it 
was descriptive enough with the comments so that most developers can understand it.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods will modify the original input or variable whereas non-destructive 
methods leave that original input or variable alone and often create a duplicate to modify.

=end