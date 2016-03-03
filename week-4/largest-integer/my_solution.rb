# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# def largest_integer(list_of_nums)
#   if list_of_nums == nil
#     p nil
#   else
#     p list_of_nums.max
#   end
# end

# Refactored
# def largest_integer(list_of_nums)
#   p nil if list_of_nums == nil
#   p list_of_nums.sort.last if list_of_nums != nil
# end

# Second Solution
def largest_integer(list_of_nums)
  if list_of_nums == []
    p nil
  else
    max_num = nil
    list_of_nums.each do |num|
      if max_num == nil
        max_num = num
      else
        max_num = num if (num > max_num)
      end
    end
    p max_num
  end
end