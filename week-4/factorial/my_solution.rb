# Factorial

# I worked on this challenge [by myself, with: ].
=begin
if statement in case value entered equals 0
create loop in else statement
convert the value to an integer	
loop to multiply integer by itself minus 1
store that product
reassigning variable to itself - 1
break  when variable <= 1
=end


# Your Solution Below
def factorial(num)
  product = num
  if num == 0
  	p 1 #p stands in for "returns 1" and "puts 1"
  else
  	while num > 1
  		product = product * (num - 1)
  		num = num - 1
  	end
  	p product
  end
end