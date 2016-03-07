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