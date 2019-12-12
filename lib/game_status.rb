# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottow row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagonal1
  [2,4,6] #diagonal2
  ]
  
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_combination.all? { |win_index| board[win_index] == "X" } ||
    win_combination.all? { |win_index| board[win_index] == "O" }
  end
end


def full?(board)
  board.each {|a| return false if a == " "}
end

def draw?(board)
 if !won?(board) && full?(board)
   return true 
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

def winner(board)
  win = won?(board)
    if win
      return board[win[0]]
  end
end
  