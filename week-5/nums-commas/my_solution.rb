# Numbers to Commas Solo Challenge

# I spent [1] hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Nothing
# What is the output? A number with commas (string)
# What are the steps needed to solve the problem?

# Tell the user they need to input a number.
# Get the number from the user and reverse it.
# Create a variable called three_mult and set it equal to 3
# WHILE the length of the input is greater than the three_mult
#   Insert a comma at the three_mult index of the user's input.
#   Add 4 back to three_mult (not 3 since we added the comma to the user's input)
# END IF length of the input is greater than the three_mult
# return and print with a new line the reverse of the user's modified input.

# 1. Initial Solution

# def separate_comma(num)
#   # Get the number from the user and reverse it.
#   reversed_input = num.to_s.reverse
#   # Create a variable called three_mult and set it equal to 3
#   three_mult = 3
#   # WHILE the length of the input is greater than the three_mult
#   while reversed_input.length > three_mult
#     # Insert a comma at the three_mult index of the user's input.
#     reversed_input.insert(three_mult, ',')
#     # Add 4 back to three_mult (not 3 since we added the comma to the user's input)
#     three_mult += 4
#   end
#   # return and print with a new line the reverse of the user's modified input.
#   p reversed_input.reverse
# end

# 2. Refactored Solution

def separate_comma(num)
  # Gets the input, deletes \n, reverses the string, then adds a comma after any 
  # sequence of 3 digits that is also followed by another digit, reverses it back,
  # and prints/returns it.
  p num.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

At first I considered using only if statements but I soon realized that iteration needed to occur. I then 
introduced a WHILE loop with an if statement and it was a better option.

Was your pseudocode effective in helping you build a successful initial solution?

No. I really had to play with the code a bit beforehand. After I got the solution 
by playing with the code, I went back and wrote the pseudocode, which made me 
realize areas in the code where I could improve.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience 
of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they 
significantly change the way your code works? If so, how?

I used .gsub, which I have used before but not quite to this extent. It was great learning 
about how I could d to specifically look for digits.

How did you initially iterate through the data structure?

Using a while loop.

Do you feel your refactored solution is more readable than your initial solution? Why?

Readable? No. More efficient? Definitely. I think that is the dilemma we will face as developers 
later on since there seems to be this contrast between readability and efficiency. 
I guess it depends on the circumstance about which one we should favor when writing code.

=end