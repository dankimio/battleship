class BoardNameComponent < ViewComponent::Base
  NAME = {
    main: "Your fleet",
    opponent: "Opponent"
  }.freeze
  # player_type: :main, :opponent
  def initialize(player_type)
    @player_type = player_type
  end

  def classes
    @player_type.to_s
  end

  def name
    NAME[@player_type]
  end
end
