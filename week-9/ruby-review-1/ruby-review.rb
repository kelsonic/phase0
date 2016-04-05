# PezDispenser Class from User Stories

# I worked on this challenge [with: Kelson].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Create PezUser class
# 	start with empty array (pez dispenser)
# 	color name strings for each indivial
# 	index count for remaining pez

#  Create create method
#  	create a new empty pez dispenser
 
#  Create count method
#  	count items in given array
 
#  Create eat method
#  	remove the last item in the array
 
#  Create add method
#  	push an item (string color) to the array
 
#  Create show method
#  	print array


# Initial Solution

class PezDispenser
	def initialize(flavors) # create to make a new dispenser.
		@dispenser = flavors
	end	

	def pez_count # count items in dispenser array, .count is more flexible than .length and can search specific items.
		@dispenser.count
	end
	
	def get_pez	# return and removes the last item in an array.
		@dispenser.pop
	end	

	def add_pez(flavor) # add flavor argument to array. 
		@dispenser.push(flavor)
	end	

	def see_all_pez #print to the array
		@dispenser
	end
end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection at /ruby-review-2/ruby-review.rb