#Reflection 4.2
**What does puts do?**

puts returns nil and prints the output to the console with a new line

**What is an integer? What is a float?**

Integers are whole numbers (that also include negative numbers). Floats are decimal numbers.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division will round down (ie. 9/2 = 4) and float division will be exact (ie. 9.0/2.0 = 4.5). 
Let's say you’re going to the movies but you only have 9 dollars. Each movie costs 2 
dollars. In this case, you can only see 4 movies since you can't very well see a half 
of a movie. This is integer division and this is why it makes sense.

**Using IRB or submlime, write a program that calculates and outputs the:**

*Hours in a year*

```
p 24 * 365
# => 8760
```

*Minutes in a decade*

```
p 60 * 24 * 365 * 10
# => 5,256,000
```

##Exercises
**Defining Variables**

View defining-variables.rb

**Simple String Methods**

View simple-string.rb

**Local Variables and Basic Arithmetical Operations**

View basic-math.rb

##Reflection Release 7
**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby uses the + for addition, the - for subtraction, the * for multiplication, the / for division, and % for modulus.

**What is the difference between integers and floats?**

Integers are whole numbers (that also include negative numbers) whereas floats are decimal numbers.

```
2.0 #float
2 #integer
``` 

**What is the difference between integer and float division?**

Integer division will round down (ie. 9/2 => 4) whereas float division output another float (ie. 9.0/2.0 => 4.5).

**What are strings? Why and when would you use them?**

Strings are a sequence of characters that can contain alphanumerics, symbols, etc. 
Strings are very handy when creating data so that we can use characters other than numbers. 
I use them very often with error messages on websites as you often want to tell your user 
what the error was in a human language that we can understand, but their use reaches far beyond 
simple error messages.

**What are local variables? Why and when would you use them?**

Local variables are variables that have a local scope. This means that if you create a 
variable with the same name in a different block or a different scope, the local variable 
you just declared will not be defined in the different block or scope.

**How was this challenge? Did you get a good review of some of the basics?**

This challenge was great because I really enjoy coding with more intricate programming languages 
other than HTML/CSS. The most useful resource throughout this challenge was the page that listed 
all ruby string methods.