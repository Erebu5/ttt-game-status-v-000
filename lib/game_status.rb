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
  WIN_COMBINATIONS.each do |win_combo|
    if win_combo.all? { |token| board[token] == "X" }
      return win_combo
    elsif win_combo.all? { |token| board[token] == "O" }
end
