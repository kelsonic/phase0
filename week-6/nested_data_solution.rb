# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:2
# ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
	if element.kind_of?(Array)
		element.each {|inner| p inner}
	end
end		


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |element|
	if element.kind_of?(Array)
		element.each do |inner|
			if inner.kind_of?(Array)
		  		inner.each do |deep_inner| 
		  			p deep_inner + "ly"
		  		end	
		  	end	
		end  		
	end
end	

#Reflection
=begin
What are some general rules you can apply to nested arrays?

I'm a bit confused by this question but I will try my best to answer it. Nested arrays 
can be accessed by providing the array followed by the [index number]. If you need to access 
a hash within a nested array, you can do so by getting into the nested array as stated 
in the previous sentence and by adding on the [key] after the [index number] for the nested 
array.

What are some ways you can iterate over nested arrays?

You can loop through nested arrays (using .each, .map, for loops, etc.) and you can loop 
through nested arrays by using the methods that I just stated.

Did you find any good new methods to implement or did you re-use one you were already 
familiar with? What was it and why did you decide that was a good option?

We used the .kind_of method to ensure that we were accessing our nested arrays and not other 
values.

=end