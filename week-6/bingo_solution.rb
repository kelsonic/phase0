# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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
    # Return the letter and the number concatenated.
    @call = @letter + @number.to_s
  end
  
  def check
    for index in @bingo_letters # Fix this line to iterate through
      if @letter == @bingo_letters[index]
        for sub_array in @bingo_board
          if sub_array[index] == @number
            sub_array[index] = 'X'
          end
        end
      end
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
