# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Winning Combos
WIN_COMBINATIONS = [
  [ 0, 1, 2 ], # top row
  [ 3, 4, 5 ], # middle row
  [ 6, 7, 8 ], # bottom row
  [ 0, 3, 6 ], # left column
  [ 1, 4, 7 ], # middle column
  [ 2, 5, 8 ], # right column
  [ 0, 4, 8 ], # diagonal top-bottom
  [ 2, 4, 6 ]  # diagonal bottom-top
]

# Won?
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 =="X" && position_3 == "X")
      return combo
    elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return combo
    else
      false
    end
  end
end
