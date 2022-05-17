## TURN ##
def turn(board)
    # ask for input
    puts "Please enter 1-9:"

    # get input until valid
    index = input_to_index(gets)
    until valid_move?(board, index)
        puts "Invalid move. Please try again."
        index = input_to_index(gets)
    end

    # make the move
    move(board, index)

    # display updated board
    display_board(board)
end
 
## DISPLAY_BOARD ##
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

## INPUT_TO_INDEX ##
def input_to_index(num)
    num.to_i - 1
end

## MOVE ##
def move(board, index, char = "X")
    board[index] = char
end

## POSITION_TAKEN? ##
def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    end
end

## VALID_MOVE? ##
def valid_move?(board, index)
    # if index exists (0-8) & position is not taken, return true
    index.between?(0, 8) && !position_taken?(board, index)
end