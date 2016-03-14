# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: The labels, the amount of labels, and a random label when die is rolled.
# Steps:
# If the amount of labels is empty, raise an Argument Error.
# Create class variable with inputted labels
# In sides method, return the amount of labels
# In the roll method, return a random label.


# Initial Solution

class Die
  def initialize(labels)
    if labels.count < 1
      raise ArgumentError.new("You must pass in a list of labels.")
    end
    @labels = labels
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    # If labels array is empty raise Arugment Error
    if labels.count < 1
      raise ArgumentError.new("You must pass in a list of labels.")
    end
    # Assign input to class variable
    @labels = labels
  end

  def sides
    # Return amount of sides on the die
    @labels.count
  end

  def roll
    # Return a random string from the array to simulate rolling the die
    @labels.sample
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you created 
in terms of implementation? Did you need to change much logic to get this to work?

The logic was the same. I did change the unless statement I used beforehand to an IF 
statement since it was easier to check if the array was empty by seeing if it had 
1 or more content(s).

What does this exercise teach you about making code that is easily changeable or modifiable? 

It showed me that taking the time to refactor for a previous problem can really help 
in the future when the solution needs to be modified slightly for a different (though similar) 
problem.

What new methods did you learn when working on this challenge, if any?

I learned about sample, which returns a random element from an array.

What concepts about classes were you able to solidify in this challenge?

Instance variables should have an accurate name since they will be used by multiple 
definitions throughout the class.

=end