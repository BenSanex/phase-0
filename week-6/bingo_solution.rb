# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Pass random number on array of [b,i,n,g,o] and random number of 1-100 and dislay number

# Check the called column for the number called.
  #Iterate through looking for @bingo_board[number][letter]

# If the number is in the column, replace with an 'x'
  # Set @bingo_board[number][letter] = 'x'

# Display a column to the console
  #Print @bingo_board[1-6][letter]

# Display the board to the console (prettily)
  #Convert the separate arrays to strings and puts to console

# Initial Solution

class BingoBoard
  attr_accessor :letter, :number, :pull
  attr_reader :bingo_board
  def initialize(board)
    @bingo_board = board
    @BINGO = ['B','I','N','G','O']
    puts "Welcome to the retirement home."
  end

  def call
    @letter = rand(0..4)
    @number = rand(1..100)
    @pull = [@BINGO[@letter],@number]
  end

  def check
    i = 0
    for i in 0..4
      if @bingo_board[i][@letter] == @number
        @bingo_board[i][@letter] = 'X'
        p "Hit"
        break
      end
      p "Miss"
    end 
  end

    def display
      puts
      @bingo_board.each do |row|
        puts row.join(" ")
      end
      puts
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
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# It was hard because the notes that were already in the file seemed like good pseudocode to me.  I like to allude to the methods I will be using if I know which ones I want to use.

# What are the benefits of using a class for this challenge?

# Classes make it easy to pass variables between different methods.

# How can you access coordinates in a nested array?

# Basically go row then column, so array[row][column].

# What methods did you use to access and modify the array?

# I used .each to iterate through, and .join when I wanted to display the board.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I learned the zip method. It is called on an array, and takes at least one more array as an argument. It could be used to make the bingo board, by putting all the columns in arrays and then using zip to put them together.

# How did you determine what should be an instance variable versus a local variable?

# Anything I needed to reuse would be an instance variable, and local variables I just used for iterators.

# What do you feel is most improved in your refactored solution?

# I didn't know how to refactor. I spent a lot of time redoing my initial code to make sure it worked, and my methods were already very simple.