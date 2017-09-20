# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Winning Combinations
def WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [5, 6, 7],
  [0, 3, 5],
  [1, 4, 6],
  [2, 5, 7],
  [0, 4, 7],
  [2, 4, 5]
]
end
