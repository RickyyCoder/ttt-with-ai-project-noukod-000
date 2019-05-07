module Players
  class Computer < Player
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

    def move(board)
      if board.turn_count < 4
        return "1" if board.unplayed?
        return "9" if board.turn_count == 2 && board.cells[8] == " "
        return "5" if board.cells[4] == " "
        return "1" if board.turn_count == 1
        best_move(board).to_s
      else
        best_move(board).to_s
      end
    end

end