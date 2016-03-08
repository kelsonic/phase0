# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size 
#     p array
#   else
    
#     while array.length < min_size
#       array = array.push(value)
#     end 
     
#     p array
#   end
# end



# def pad(array, min_size, padding=nil) #non-destructive
#   if array.length >= min_size 
#     p array
#   else
#   	new_array = Array.new(array)
#     while new_array.length < min_size
#       new_array = new_array.push(padding)
#     end 
       
#     print new_array 
#   end
# end

# 3. Refactored Solution
def pad(array, min_size, padding=nil)
  array.resize(value, array[-1]...min_size)
end

def pad!(array, min_size, padding=nil)
  p array.resize(value, array[-1]...min_size)
end


# 4. Reflection