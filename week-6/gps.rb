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
    p "You can make #{servings / req_servings} of #{item}."
  else
    p "You don't have enough to make #{item}."
  end
    
end
  

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)