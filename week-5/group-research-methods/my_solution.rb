# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

  value=[]
  source.each do |e|
    e = e.to_s  # must be string to do include check
    if e.include?(thing_to_find)
      value.push(e)
    end
  end
  return value

end

def my_hash_finding_method(source, thing_to_find)
  
=begin  
  find=[]
  source.each do |key,value|
    if value==thing_to_find
      find.push key
    end
  end
  return find
=end

  return source.select {|key,value| value==thing_to_find}.keys #refactored

end

# Identify and describe the Ruby method(s) you implemented.
# Found include in the ruby docs. It searches the string for the argument passed and returns a true or false 
#
# Each when used on a hash can pull the key and value properties and iterate over them.  An array can then be made from the keys.
# .select was in the ruby docs which returns the has value pairs that match the value then .keys will take that an turn it into an array.

# Person 2's Solution
def my_array_modification_method!(arry, num)
  p arry.map! {|x| 
    if x.is_a?(Integer)
      x + num 
    else
      x
    end
  }
end

def my_hash_modification_method!(my_hash, num)
  p my_hash.each{ |key,value| my_hash[key] = value + num }
end

=begin
Identify and describe the Ruby method you implemented

The first method takes an array and a number as input.
The map method then will iterate over the entire array and change (permanently) the elements within it.
The is_a?(Integer) method checks to make sure that the input we 
are changing is the numbers within the array.
The numbers are then add the input num variable.
ELSE if the element in the array isn't a variable, the element is left alone and saved as is.

The second method takes in a hash and a number.
It then iterates over the hash and adds the inputted number to the values for each key.

Teach your accountability group how to use the methods:

.is_a?(TYPE) This method returns a boolean (TRUE/FALSE) depending on the type of object it is attached to. 
It's very handy for determining the type of a variable.

.map! iterates over an array and will return back modified elements within it 
depending on what you include in its block (as shown above).

.each iterates over an array and will return back modified elements within it (handy for hashes.)

Share any tricks you used to find and decipher the Ruby Docs:

Use Stack Overflow if you are ever curious about different examples for how methods can be used!
=end