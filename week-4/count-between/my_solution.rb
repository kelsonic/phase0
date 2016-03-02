# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers == [] || lower_bound > upper_bound
    p 0
  elsif lower_bound == upper_bound
    p list_of_integers.count
  else
    list_of_integers = list_of_integers.delete_if {|num| num < lower_bound || num > upper_bound}
    p list_of_integers.count
  end
end

count_between([-10, 1, 2], 0, 100)