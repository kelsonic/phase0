# Your Names
# 1) Ted Bogin
# 2) Kelson Adams

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item, servings) #2 parameters: item and number of ingredients in item
  
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #library is a hash of desserts and serving size
  
  if !library.has_key?(item) 
    raise ArgumentError.new("We don't have that dessert!")
  end
  
  req_servings = library[item] #Returns first value of the item to make key in library hash
  remaining_servings = servings % req_servings #Remaining number of dividing nuumber of ingredients and serving size

  if servings >= req_servings
    puts "You have #{remaining_servings} serving left over." if remaining_servings == 1
    puts "You have #{remaining_servings} servings left over." if remaining_servings > 1
    puts "You can make #{servings / req_servings} of #{item}."
  else
    puts "You don't have enough to make #{item}."
  end
    
end
  

# p serving_size_calc("pie", 2)
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)

# Reflection
=begin
What did you learn about making code readable by working on this challenge?

A lot of code seems to be written in a verbose and confusing manner without many comments.
It's important to do refactoring to both ensure that your code is readable and efficient, 
as it allows for better scalability and adaptability in the future.

Did you learn any new methods? What did you learn about them?

Although I had already known the method, we used .has_key on the hash to check if 
there was a certain key within the hash.

What did you learn about accessing data in hashes?

It is simple to do with the numerous methods that ruby has for hashes. We used the .has_key
method as stated above.

What concepts were solidified when working through this challenge?

It is important to keep your code as clean as possible and to NOT introduce new variables
unless you absolutely have to.

=end