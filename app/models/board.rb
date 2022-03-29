class Board
  SIZE = 10
  PLAYER_TYPES = %i[main opponent].freeze

  attr_reader :player_type, :rows

  # @param player_type [Symbol] :main or :opponent
  # @param rows [Array<Array>] 10x10 array with board values
  #   - nil: default
  #   - false: miss
  #   - true: hit
  def initialize(player_type, rows)
    raise ArgumentError unless player_type.in?(PLAYER_TYPES)

    @player_type = player_type

    raise ArgumentError unless rows.size == SIZE
    raise ArgumentError unless rows.flatten.size == SIZE * SIZE

    @rows = rows
  end

  def self.empty(player_type)
    Board.new(
      player_type,
      # 10x10 array with nil values
      Array.new(10, Array.new(10, nil))
    )
  end
end
