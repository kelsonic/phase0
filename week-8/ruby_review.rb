# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 1. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# The "Assertion failed!" error should be raised on line 14, as name is not equal to 
# "billybob". This is what occurs. Here is the pseudocode for what is happening:

# the assert method is created, which raises "Assertion failed!" error unless whatever 
# is in the block returns true. The name variable is then set to "bettysue". The 
# assert method is called with (is name equal to "bettysue") within its block. The 
# assert method does not raise an error as the block returns true. The next block, however, 
# returns false and, thus, the assert method raises the "Assertion failed!" error.

# 3. Copy your selected challenge here

def good_guess?(input)
  num = input.to_i
  if num == 42
    p true
  else
    p false
  end
end

def assert
  if yield
    puts "Assertion passed."
  else
    raise "Assertion failed!"
  end
end

assert {defined?(good_guess?)}
assert {good_guess?(42) == true}
assert {good_guess?(rand(41)) == false}

# 4. Convert your driver test code from that challenge into Assert Statements

# Completed above.

# 5. Reflection
=begin
What concepts did you review or learn in this challenge?

I learned about TDD and creating your own assert statements. This is extremely handy 
to make sure that as you are developing more complex programs that all the features 
that have already been built don't break in the development process.

What is still confusing to you about Ruby?

Ruby makes a ton of sense. It is very human-friendly and I really like that. It does 
seem to be a bit slower than JS and it is more fussy when it comes to errors (during 
this exercise, for instance, Ruby complained about me not passing in any parameters 
into the good_guess? method a couple of times).

What are you going to study to get more prepared for Phase 1?

JavaScript.

=end