# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: The answer for initialize instance method, and a guess integer for the guess 
#         instance method.
# Output: A :low, :high, or :correct key for the guess instance method and a boolean 
#         for the correct? instance method
# Steps:
# Unless the answer is an integer, raise an Argument Error, otherwise assign the answer 
# to an instance variable.

# Create the guess method with a guess as an argument, unless the guess is an integer,
# raise an Argument Error, otherwise if the guess is lower than the answer, return the 
# :low key, if the guess is higher than the answer, return the :high key, otherwise return 
# the :correct key.

# Create the solved? method with no arguments.
# If the answer equals the guess, return true, otherwise return false.


# Initial Solution

class GuessingGame
  def initialize(answer)
    unless answer.is_a?(Integer)
      raise ArgumentError.new('Please pass me an integer.')
    end
    @answer = answer
  end
  
  def guess(num)
    unless num.is_a?(Integer)
      raise ArgumentError.new('Please guess with an integer.')
    end
    @guess = num
    if @guess < @answer
      p :low
    elsif @guess > @answer
      p :high
    else
      p :correct
    end
  end

  def solved?
    if @answer == @guess
      p true
    else
      p false
    end
  end
end

# Refactored Solution
class GuessingGame
  
  def initialize(answer)
    # Refer to arg_checker method below
    arg_checker(answer)
    # Create instance variable of answer
    @answer = answer
  end
  
  def guess(guess_num)
    # Refer to arg_checker method below
    arg_checker(guess_num)
    @guess = guess_num
    # IF guess is less than answer return :low key
    if @guess < @answer
      p :low
    # IF guess is more than answer return :high key
    elsif @guess > @answer
      p :high
    # OTHERWISE your guess equals the answer!
    else
      p :correct
    end
  end

  def solved?
    # IF answer equals your guess, return true, otherwise return false
    @answer == @guess ? true : false
  end
  
  def arg_checker(arg)
    # If the argument passed in is NOT an integer, return an Arugment Error
    unless arg.is_a?(Integer)
      raise ArgumentError.new('Please give me an integer.')
    end
  end
  
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors 
(actions) of a real-world object?

Instance variables (and instance methods) are typically general characteristics 
of a certain object that pertain to all different types of that particular object. 

When should you use instance variables? What do they do for you?

Instance variables are very handy when needing to manipulate general characteristics 
of a given object due to, say, an instance method or some other method. Instance variables 
are a particular attribute for an instance of the object they're defined by.

Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?

No trouble since it was very similar to the last challenge (6.2). I used both if, elsif, else, and 
unless for flow control.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Ruby handles symbols much faster than other data types (even Ruby's methods are 
internally stored as keys), so there is some efficiency gained when using keys. 
They are also handy aesthetically and seem to inherit quite a few methods from the String class.

=end