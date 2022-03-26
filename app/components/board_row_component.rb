class BoardRowComponent < ViewComponent::Base
  def initialize(board_atoms)
    @board_atoms = board_atoms
  end
end
