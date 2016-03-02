# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Line 170 as the error message was errors.rb:170: syntax error, unexpected end-of-input, expecting keyword_end. 
# This is actually not where the error occurs, however, as the error resides within closing the while loop in cartman_hates(thing).
# 3. What is the type of error message?
# The  type of error message is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It states that there is 'unexpected end-of-input, expecting keyword_end'. This means that some method, loop, etc. was not closed properly.
# 5. Where is the error in the code?
# The while loop should be closed with an end tag after the puts statement.
# 6. Why did the interpreter give you this error?
# All loops, methods, if statements, etc. need to be closed with an end statement.

# --- error -------------------------------------------------------

south_park = 0 # Added = 0

# 1. What is the line number where the error occurs?
# Line 37.
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# south_park is not defined neither as a variable nor a method, so Ruby does not know what to do with it on line 37.
# 5. Why did the interpreter give you this error?
# south_park is not defined neither as a variable nor a method, so Ruby does not know what to do with it. 

# --- error -------------------------------------------------------
def cartman # Added
end # Added

cartman()

# 1. What is the line number where the error occurs?
# line 52
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# There is no method called cartman that has been defined in the code, so therefore when the method is called on line 52 Ruby doesn't know what to do with it
# 5. Why did the interpreter give you this error?
# There is no method for cartman.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()#'I hate Kyle')

# 1. What is the line number where the error occurs?
# line 69
# 2. What is the type of error message?
# in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (given 1, expected 0) (ArgumentError) from errors.rb:73:in '<main>'
# 4. Where is the error in the code?
# On line 73 since when calling the cartmans_phrase method there should not be any inputs, which there is in this case.
# 5. Why did the interpreter give you this error?
# It gave us the error because the method can handle 0 arguments, whereas on line 73 1 was passed to it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You killed Kenny!")

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (given 0, expected 1) (ArgumentError) from errors.rb:92:in '<main>'
# 4. Where is the error in the code?
# The method on line 88 is expecting an input whereas on line 92 it is called with no input.
# 5. Why did the interpreter give you this error?
# The method on line 88 is expecting an input whereas on line 92 it is called with no input.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Butters')

# 1. What is the line number where the error occurs?
# 109
# 2. What is the type of error message?
# in 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (given 1, expected 2) (ArgumentError) from errors.rb:113:in '<main>'
# 4. Where is the error in the code?
# The method is called with only one argument (in this case a string), whereas it needs to have two strings for its input.
# 5. Why did the interpreter give you this error?
# The method is called with only one argument (in this case a string), whereas it needs to have two strings for its input.

# --- error -------------------------------------------------------

fifty = 5 * 10 # "Respect my authoritay!" 

# 1. What is the line number where the error occurs?
# 128
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in '*': String can't be coerced into Fixnum from errors.rb:128:in '<main>'
# 4. Where is the error in the code?
# At the string on line 128
# 5. Why did the interpreter give you this error?
# A string cannot be converted to an integer and therefore the above operation does not work. The product, even if it could work, also needs to be assigned to a variable.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1 # 0


# 1. What is the line number where the error occurs?
# 143
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in '/': divided by 0 from errors.rb:143:in '<main>'
# 4. Where is the error in the code?
# On line 43, 20/0 does not work since a number cannot be divided by 0.
# 5. Why did the interpreter give you this error?
# A number cannot be divided by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 159
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# in 'require_relative': cannot load such file -- /home/ubuntu/workspace/phase-0/week-4/cartmans_essay.md from errors.rb:159:in '<main>'
# 4. Where is the error in the code?
# There is no file called 'cartmans_essay.md' in the same directory for it to load.
# 5. Why did the interpreter give you this error?
# There is no file called 'cartmans_essay.md' in the same directory for it to load.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?

# None really, though I suppose the longest to read was the LoadError but that was just due to the long path that was printed.

# How did you figure out what the issue with the error was?

# The type of error and the error message both give a nice description of what the error could be, so I only used those to figure out the errors.

# Were you able to determine why each error message happened based on the code? 

# Yes. The error messages are straightforward and don't lie.

# When you encounter errors in your future code, what process will you follow to help you debug?

# Understand the error message and go through it one step at a time.