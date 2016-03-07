# Method to create a list
# input: 
# steps: 
  # define the method with parameters 
  # cart = {}
  # 
# output: puts 'Created cart successfully!'

def create_cart(user_cart)
  cart = user_cart
  puts 'Created cart successfully!'
  p cart
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:

# define the method with parameters item name and quantity
# add item to hash with value quantity
# puts informational message

# output: modified hash with added item

def add_item(name,quantity,cart)
  
  unless cart.has_key?(name)
    cart[name] = quantity
    puts 'Item successfully added!'
  else
    puts 'Item already added!'
  end
  
  p cart
  
end

# Method to remove an item from the list
# input: item name
# steps:

# define the method with parameter item name
# remove item from list
# puts informational message

# output: modified hash

def remove_item(name, cart)
  
  if cart.delete(name) != nil
    puts 'Item successfully removed!'
  else
    puts 'No such item in cart!'
  end
  
  p cart
  
end

# Method to update the quantity of an item
# input: item name and quantity
# steps:

# define the method with parameters item name and quantity
# set the quanity to new quantity
# puts informational message

# output: modified hash

def update_item(name,quantity, cart)
  
  if cart.has_key?(name)
    cart[name] = quantity
    puts 'Quantity of item successfully updated!'
  else
    puts 'Item doesn\'t exist!'
  end
  
  p cart
  
end

# Method to print a list and make it look pretty
# input: none
# steps:

# define the method
# hash.each
# puts the product and (quantity)

# output: none

def display_cart(cart)
  cart.each do |item, quantity|
    puts item.to_s + ' (' + quantity.to_s + ')'
  end
end

my_cart = create_cart({'potatoes' => 2, 'garlic' => 5, 'loaves' => 3})
add_item('banana', 4, my_cart)
remove_item('banana', my_cart)
update_item('potatoes', 10, my_cart)
display_cart(my_cart)

# What did you learn about pseudocode from working on this challenge?

# Pseudocode really helps you write your code fast since you typically have done the hard part before
# you start coding (which is creating the structure.)

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# If you use arrays you would have to keep two separate lists and perhaps even sync their length
# so that their quantities and products can be connected. Hashes are much easier for 
# this exercise since the keys can be the products and the values can be the quantities.

# What does a method return?

# It depends on what you ask it to return. It could be nothing if you don't put anything in
# your method. Or it could be a ton of things. (A bit of a broad question.) It solely depends 
# on what you want it to output.

# What kind of things can you pass into methods as arguments?

# Just about anything. Functions, objects, strings, numbers, lists, hashes, etc.

# How can you pass information between methods?

# By having one method's output equal another method's input.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# Are hashes ordered? If so, have they always been for Ruby?