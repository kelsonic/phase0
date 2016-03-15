# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Define method with no arguments.
  # From an array of strings with the letters b,i,n,g,o then grab a random letter.
  # Assign letter to variable.
  # From a range of numbers between 1 and 100 grab a random integer.
  # Assign number to variable.
  # Return the letter and the number concatenated.

# Check the called column for the number called.
  # IF the letter is b, check the zero index of each subarray in the bingo board array.
    # If the number equals the bingo board subarry number, replace bingo board subarray number with X
  # IF the letter is i, check the first index of each subarray in the bingo board array.
    # If the number equals the bingo board subarry number, replace bingo board subarray number with X
  # IF the letter is n, check the second index of each subarray in the bingo board array.
    # If the number equals the bingo board subarry number, replace bingo board subarray number with X
  # IF the letter is g, check the third index of each subarray in the bingo board array.
    # If the number equals the bingo board subarry number, replace bingo board subarray number with X
  # IF the letter is o, check the fourth index of each subarray in the bingo board array.
    # If the number equals the bingo board subarry number, replace bingo board subarray number with X

# Display the board to the console (prettily)
  # print each number in the bingo board subarrays and separate each with ' | '
  # print a newline with '-----------' in-between each subarray

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = ['b','i','n','g','o']
  end

  def call
    # From an array of strings with the letters b,i,n,g,o then grab a random letter.
    @letter = @bingo_letters.sample
    # From a range of numbers between 1 and 100 grab a random integer.
    @number = rand(1..100)
    # Return the letter and the number (converted to a string) concatenated.
    p "Welcome to Bingo! Here comes the number:"
    sleep 1.5
    p "#{@letter.capitalize}#{@number}."
    sleep 0.5
  end
  
  def check
    print "Now checking your board for the called letter and number"
    sleep 1
    print "."
    sleep 0.5
    print "."
    sleep 0.5
    print ".\n"
    sleep 3
    
    # IF the called letter equals 'b'
    if @letter == 'b'
      for subarray in @bingo_board
        if subarray[0].to_s == @number
          subarray[0] = 'X '
          puts "You have the number #{@number} on your board!"
        else
          puts "You don't have the called number on your board... Shucks!"
        end
      end
    # IF the called letter equals 'i'
    elsif @letter == @bingo_letters[1]
      for subarray in @bingo_board
        if subarray[1].to_s == @number
          subarray[1] = 'X '
          puts "You have the number #{@number} on your board!"
        else
          puts "You don't have the called number on your board... Shucks!"
        end
      end
    # IF the called letter equals 'n'
    elsif @letter == @bingo_letters[2]
      for subarray in @bingo_board
        if subarray[2].to_s == @number
          subarray[2] = 'X '
          puts "You have the number #{@number} on your board!"
        else
          puts "You don't have the called number on your board... Shucks!"
        end
      end
    # IF the called letter equals 'g'
    elsif @letter == @bingo_letters[3]
      for subarray in @bingo_board
        if subarray[3].to_s == @number
          subarray[3] = 'X '
          puts "You have the number #{@number} on your board!"
        else
          puts "You don't have the called number on your board... Shucks!"
        end
      end
    # IF the called letter equals 'o'
    elsif @letter == @bingo_letters[4]
      for subarray in @bingo_board
        if subarray[4].to_s == @number
          subarray[4] = 'X '
          puts "You have the number on your board!"
        else
          puts "You don't have the called number on your board... Shucks!"
        end
      end
    # Otherwise, the called number and letter are incorrect.
    else
      raise ArgumentError.new("The called letter and number are incorrect for this version of bingo.")
    end
  end
  
  # Display the board to the console (prettily)
  def display
    puts "Your Bingo Board:"
    print " B |  I |  N |  G |  O\n"
    puts "-"*22
    for subarray in @bingo_board
      for num in subarray
        if num == subarray.last
          print "#{num}\n"
        else
          print "#{num} | "
        end
      end
      puts "-"*22 unless subarray == @bingo_board.last
    end
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    # Assign the board multi-dimensional array to an instance variable
    @bingo_board = board
    # Assign the bingo letters to an instance variable
    @bingo_letters = ['b','i','n','g','o']
  end

  def call
    # Welcome and the call UI
    puts "Welcome to Bingo!"
    sleep 1
    puts "Here comes the number:"
    sleep 3
    
    # From an array of strings with the letters b,i,n,g,o then grab a random letter.
    @letter = @bingo_letters.sample
    
    # TRUE BINGO BOARD (optional)
    # IF letter is 'b'
    if @letter == @bingo_letters[0]
      @number = rand(1..15)
    # IF letter is 'i'
    elsif @letter == @bingo_letters[1]
      @number = rand(16..30)
    # IF letter is 'n'
    elsif @letter == @bingo_letters[2]
      @number = rand(31..45)
    # IF letter is 'g'
    elsif @letter == @bingo_letters[3]
      @number = rand(46..60)
    # IF letter is 'o'
    else
      @number = rand(61..75)
    end
    # End TRUE BINGO BOARD
    
    # Print the call UI
    puts "#{@letter.capitalize}#{@number}."
    sleep 0.5
  end
  
  def check
    # Checking your board UI
    print "Now checking your board for the called letter and number"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    puts "."
    sleep 2
    
    # WITH LEGAL BINGO BOARD
    # Check each value in the bingo board to see if it equals the called number
    # IF called number equals a value on your board, replace it with 'X'
    for subarray in @bingo_board
      subarray.map! { |x| @number == x ? x = 'X' : x }
    end
    
  end
  
  def display
    puts "Your Bingo Board:"
    puts
    puts " B |  I |  N |  G |  O"
    puts "-"*22
    for subarray in @bingo_board
      for num in subarray
        if num == subarray.last
          print "#{num}\n"
        else
          print "#{num} | "
        end
      end
      puts "-"*22 unless subarray == @bingo_board.last
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[3, 16, 31, 58, 62],
        [7, 22, 35, 52, 64],
        [15, 23, 34, 51, 70],
        [14, 30, 36, 47, 58],
        [4, 19, 42, 49, 69]]

new_game = BingoBoard.new(board)
new_game.display
new_game.call
new_game.check
new_game.display

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Writing the pseudocode for this challenge was relatively easy (perhaps the easiest out 
of the challenges thus far.) I really tried to write out my pseudocode as complete as 
possible before diving into the code for this challenge and it paid off. Writing the code 
took very little time.

What are the benefits of using a class for this challenge?

As an object, you can call it again and have different instances of it over and over again.
Later on we will probably want to call the various methods within the methods, and it 
allows instance variables to be used by other class instance methods.

How can you access coordinates in a nested array?

I used a for loop, which worked quite well.

What methods did you use to access and modify the array?

I used for loops to modify subarrays. I also used array methods like .map! to modify 
the contents of such arrays.

Give an example of a new method you learned while reviewing the Ruby docs. Based 
on what you see in the docs, what purpose does it serve, and how is it called?

I learned that rand(1..15) is much different than rand(1...15) since the first includes 
15 while the latter does not. Rand is a very useful method for generating a random value 
(including letters) and will be heavily used in the future.

How did you determine what should be an instance variable versus a local variable?

If the variable needs to be used by other instance methods, make it an instance variable. 
If it does not, then keep its scope local so that debugging problems don't occur in the future.

What do you feel is most improved in your refactored solution?

Well, I got rid of most of the flow control and my first check method took up more than 
60 lines of code whereas my refactored solution takes up about 10. It was quite a relief 
when I refactored.

=end