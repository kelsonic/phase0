# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hour on this challenge.

# 0. Pseudocode

# Input: sides of the die
# Output: sides of the die and the die being rolled
# Steps:
=begin
Create class Die
  Create initialize method that accepts number of sides of die as input
    The input must be an integer greater than 1
      Otherwise raise an argument error
    end
    Assign the input as an instance variable
  End initialize method
  
  Create sides method with no input
    Output number of sides
  End sides method
  
  Define roll method that takes no arguments
    Return a random integer from 1 to the number of sides
  End roll method
  
End the class Die
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides.is_a?(Integer) and sides > 1
      raise ArgumentError.new("Only integers greater than 0 are allowed.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1...@sides+1)
  end
end

# 3. Refactored Solution

# class Die
#   def initialize(sides)
#     unless sides.is_a?(Integer) and sides > 1
#       raise ArgumentError.new("Only integers greater than 0 are allowed.")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1...@sides+1)
#   end
# end

# 4. Reflection
=begin

What is an ArgumentError and why would you use one?

An ArgumentError is an error that is raised when the arguments are wrong. You use it when 
the arguments are not how you want them to be.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used rand, which takes a random number from a specific integer to a specific integer.
I had a bit of trouble understanding that it starts at zero to the argument you pass in 
if you only pass in one argument, but once I understood that I modified it to start at one until 
the argument I passed in.

What is a Ruby class?

It is an object that inherits from other classes (which are also objects since all classes inherit from the 
object class) and can use both the methods it inherits from ancestor classes as well as 
any methods it modifies or creates inside of its class.

Why would you use a Ruby class?

To create a blueprint for making a certain type of object over-and-over again.

What is the difference between a local variable and an instance variable?

A local variable does not have access to other methods within a class, whereas an 
instance variable does. An instance variable is prefixed with an '@' symbol.

Where can an instance variable be used?

An instance variable can be used mainly with classes so that each instance or object 
of that class has a different or separate value.

=end