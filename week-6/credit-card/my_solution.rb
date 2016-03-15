# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Leland Meiners].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input: CC number as integer
# Output: Boolean
# Steps: check for 16 digits, raise ArgumentError
	# convert the number to array
	# split the array so each digit has an index
	# Double every other number (even index only)
	# -while - count variable = 0 , while count < 15, count +=2, num.map *2
	# iterate back through numbers and break all two digit numbers into two single digit integers
	# -if num has > 1 digit add both digits together. 
	# sum all values of the array
	# if sum is divisible by 10, card is Validate


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

	def initialize(cc)
		@cc = cc.to_s.split("").map! {|num| num.to_i}
		unless @cc.length == 16	
			raise ArgumentError.new "Invalid Credit Card Number"
		end		
	end	

	def check_card
		count = 0
		while count < 15 
			@cc[count] *= 2
			count += 2
		end	
		sum = 0
		@cc.each do |num| 
			if Math.log10(num) >= 1.0
				num.to_s.split("").map! {|value| sum += value.to_i}
			else 
				sum += num	
			end
		end
		sum % 10 == 0 ? true : false	
	end

end


# Refactored Solution
class CreditCard

	def initialize(cc) #split cc number into 16 strings, make sure it has 16 digits
		@cc = cc.to_s.split("").map! {|num| num.to_i}
		unless @cc.length == 16	
			raise ArgumentError.new "Invalid Credit Card Number"
		end		
	end	

	def check_card 
		#multiply 2 to every other variable in the array
		count = 0
		while count < 15 
			@cc[count] *= 2
			count += 2
		end	
		
		sum = 0 #sets sum to 0, finds if integer is 1 or two digits, if two digits then add each individually to sum
		@cc.each do |num| 
			if Math.log10(num) >= 1.0
				num.to_s.split("").map! {|value| sum += value.to_i}
			else #if one digit then add number to sum
				sum += num	
			end
		end
		
		# IF the sum is divisible by 10, return true, otherwise false
		sum % 10 == 0 ? true : false #Ternary statement, used to be if/else	
	end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

The most difficult part, funny enough, was trying to convert the inputted cc number 
to an array of numbers. There's got to be a better way to do it, and I hope that whoever 
leaves a comment will know how to do it. We ended up converting the input to a string, splitting 
that, and then converting each value of the new array back to an integer.

What new methods did you find to help you when you refactored?

Apart from refactoring, we touched on the Math class' log10 method, which allowed us 
to check how many digits were in a given number. Apart from that, all the other methods 
we have used before.

What concepts or learnings were you able to solidify in this challenge?

That it is quite difficult to convert a number to an array with the values as the digits 
of the number. I also became very comfortable with testing and doing trial-and-error, 
as that seems to be the best way to learn from any micro mistakes I've made along the 
way and it is great for debugging.

=end