# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8], #last row
  [0,3,6],
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagional 1
  [2,4,6], #diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
     return WIN_COMBINATIONS # return the win_combination indexes that won.
   elseif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return WIN_COMBINATIONS
   end
   return false
end
end
