# Pseudocode
=begin

Input = An array of strings
Output = A hash with groups (keys) and names (values)
Steps:
If the array of names is less than 3, ask for a larger group.
ELSE
  Create a hash where the values are inside of an array.
  Initialize a number variable to replace the # for Group # keys in hash
  Iterate through the array and grab each name
    Initialize a group_num variable and set it equal to the string "Group " and the num variable
    IF the current group key has less than 2 values
      Add a name to the list of values for that group
    ELSE
      Add one to the number variable to create a new group
      Add the last name to the list of values for that group
  Stop iterating through the array once finished
  
  IF the last group has less than 3 members
    Add its members to the first group
    and delete the last group's existence
  
  Return the groups hash

=end

# Initial Solution
def acct_groups(lst)
  if lst.count < 3
    puts "You need to find a larger group."
  else
  
    groups = Hash.new{|hsh,key| hsh[key] = Array.new }
    num = 1
    
    lst.each do |name|
      group_num = "Group " + num.to_s
      if groups[group_num].count < 2
        groups[group_num].push name
      else
        num += 1
        groups[group_num].push name
      end
    end
    
    if groups[groups.keys.last].count < 3
      groups[groups.keys.first].push(groups[groups.keys.last]).flatten!
      groups.delete(groups.keys.last)
    end
    
    p groups
    
  end
end

acct_groups(['Jerry','May', 'Roger', 'Robin', 'Keith', 'Sandra', 'Bill']*2)

# Refactored Solution
def acct_groups(lst)
  
  # IS YOUR GROUP BIG ENOUGH TO MAKE GROUPS?
  if lst.count < 3
    puts "You need to find a larger group."
  else
    
    # INITIALIZE VARIABLES
    # Create a hash where the values are inside of an array.
    groups = Hash.new{|hsh,key| hsh[key] = Array.new }
    # Initialize a number variable to replace the # for Group # keys in hash
    num = 1
    
    # CREATE EACH GROUP
    # Iterate through the array and grab each name
    lst.each do |name|
      # Initialize a group_num variable and set it equal to the 
      # string "Group " and the num variable
      group_num = "Group " + num.to_s
      # IF the current group key has less than 2 values
      if groups[group_num].count < 2
        # Add a name to the list of values for that group
        groups[group_num].push name
      else
        # Add one to the number variable to create a new group
        num += 1
        # Add the last name to the list of values for that group
        groups[group_num].push name
      end
    end
    
    # FIX LAST GROUP IF LESS THAN 3 MEMBERS
    # IF the last group has less than 3 members
    if groups[groups.keys.last].count < 3
      # Add its members to the first group
      groups[groups.keys.first].push(groups[groups.keys.last]).flatten!
      # and delete the last group's existence
      groups.delete(groups.keys.last)
    end
    
    # RETURN AND PRINT ALL GROUPS
    p groups
    
  end
end

acct_groups(['Jerry','May', 'Roger', 'Robin', 'Keith', 'Sandra', 'Bill']*2)


# Reflection
=begin
What was the most interesting and most difficult part of this challenge?

This challenge was great! It was quite difficult and I'm certain there are more efficient ways 
to solve it than how I did, but it was fun going through the whole process. The most 
difficult part of the challenge was trying to make the multiple groups since initially I had 
my num variable inside of the array iteration.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes. Though I definitely still need some practice.

Was your approach for automating this task a good solution? What could have made it even better?

I think it was A solution, but I'm sure there are more efficient ways to do this. 
I tried to not use many fancy methods (mostly because I didn't know of any that could
make the solution only a couple lines). This would have definitely made the process 
easier.

What data structure did you decide to store the accountability groups in and why?

A hash since each group would have multiple members and I wanted it to be easy to retrieve 
individual members if needed.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned .flatten, which is extremely handy since I was stuck for a little bit on how to 
merge subarrays into the original array without using built-in methods.

=end