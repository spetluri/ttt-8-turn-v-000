def turn(board)

  puts "Please enter 1-9:"
  position = gets


  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    turn(board)
  end

end

def move(board, position, token = 'X')

  board[position.to_i-1] = token

end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)

  position = position.to_i - 1

  if (position.between?(0,8) && position_taken?(board,position) == false)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position] == "" || board[position] == " " || board[position] == nil)
    false
  elsif (board[position] == "X" || board[position] == "O")
    true
  else
    true
  end
end
