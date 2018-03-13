def turn(board)
  while counter < 10
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, token="X")
      display_board(board)
      counter += 1
    end
    turn(board)
  end
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  return true if index.between?(0,10) && valid_position?(board, index) else return false

end

def valid_position?(board,index)
  return true if board[index] == "" || board[index] == " " || board[index] == nil
  return false
end
