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