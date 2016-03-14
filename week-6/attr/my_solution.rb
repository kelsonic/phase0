#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: 
# Output:
# Steps:

class NameData
  attr_accessor :name
  
  def initialize
    puts "What is your name?"
    @name = gets.chomp
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end
  
  def hello
    puts 'Hello ' + @name.name + '! How wonderful to see you today.'
  end
end

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection
=begin
Release_1:
What are these methods doing?

They are either returning instance variables or they are changing them (and returning them).

How are they modifying or returning the value of instance variables?

They merely set the instance variable equal to another variable differs from what 
it was set to reference originally.

Release_2:
What changed between the last release and this release?

The what_is_age method is replaced by attr_reader :age. This is the same thing, 
just written on one line instead of declaring an entire instance method for it. 
Also, the attr_reader :age creates a new method for the class object with the same name 
as they key (:age, in this case).

What was replaced?

The what_is_age method is replaced by attr_reader :age.

Is this code simpler than the last?

Yes. The last code took up 3 lines and this one is 1 line.

Release_3:
What changed between the last release and this release?

The change_age method is replaced by attr_writer :age. This is the same thing, 
just written on one line instead of declaring an entire instance method for it. 
Also, the attr_writer :age creates a new method for the class object with the same name 
as they key (:age, in this case).

What was replaced?

The change_age method is replaced by attr_writer :age.

Is this code simpler than the last?

Yes. This code is written on one line instead of three.

RELEASE 6:
What is a reader method?

A reader method will return an instance variable, but it cannot be edited through the 
reader method.

What is a writer method?

It allows you to reassign a value to the instance variable, but it does not print its 
contents.

What do the attr methods do for you?

They are shortcuts for writing methods to both change and show instance variables.

Should you always use an accessor to cover your bases? Why or why not?

No, as many times you don't want certain instance variables to be overwritten or read.

What is confusing to you about these methods?

Nothing, they make sense and are a great shorthand for writing out the methods.

=end