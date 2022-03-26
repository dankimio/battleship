class BoardComponent < ViewComponent::Base
  def initialize(board)
    @board = board
  end

  def rows
    @board.rows
  end

  def classes
    "board-#{@board.player_type}"
  end
end
