def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if !position_taken?(board,index) == true && index.between?(0,8) == true
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, position, char = "X")
  board[position] = char
end  

def position_taken?(board,index)
  board[index] == 'X' || board[index] == 'O'
end  

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
    if valid_move?(board,index) == true
      move(board, index, value = "X")
    else
      turn(board)
      display_board(board)
  end
end
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
    if valid_move?(board,index) == true
      move(board, index, value = "X")
    else
      turn(board)

  end
     display_board(board)
end