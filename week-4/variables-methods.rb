# Full Name Greeter
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = first_name + ' ' + middle_name + ' ' + last_name
puts "Ah, so your full name is #{full_name}. Cool!"

# Bigger, better favorite number
puts "What's your favorite number?"
fav_num = gets.chomp.to_i
new_num = fav_num + 1
puts "Nice! But don't you think #{new_num} is a bigger and better number?"

# Format Address Challenge
load 'address/my_solution.rb'

# Define Method Challenge
load 'define-method/my_solution.rb'

# Math Challenge
load 'math/my_solution.rb'

# Reflection Questions for 4.3
# How do you define a local variable?

# A local variable is a variable that is given local scope. This means that if the variable 
# is used outside of its scope, the variable will not work.

# How do you define a method?

# A method is, according to Chris Pine, things that do stuff. However, he goes on to 
# say that a method is essentially a verb for a particular object. The method 
# makes the object do something, depending on what is described in the method.

# What is the difference between a local variable and a method?

# Metaphorically speaking, a local variable is the noun whereas the method is the verb. 
# A local variable will store some sort of value and a method will do something with that 
# local variable depending on if it is within the local variable's scope.

# How do you run a ruby program from the command line?

# 'ruby FileName.rb'

# How do you run an RSpec file from the command line?

# 'rspec FileName.rb'

# What was confusing about this material? What made sense?

# I genuinely loved this challenge! It was by far the best challenge I've had at DBC thus far. 
# I was not ever confused and loved it when I got my solution correct.