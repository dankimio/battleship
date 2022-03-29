class ShipComponent < ViewComponent::Base
  SHIP_SIZES = {
    aircraft_carrier: 5,
    battleship: 4,
    cruiser: 2,
    destroyer: 3,
    submarine: 3
  }

  attr_reader :hits

  def initialize(direction:, hits: [], silhouette: false, position: nil, type: :aircraft_carrier)
    @direction = direction
    @x, @y = position
    @type = type
    @hits = Array.new(size, false) if hits.blank?

    # Horizontal ships are rendered from left to right.
    # Vertical ships are rendered bottom to top,
    # since we want to display front at the top,
    # therefore @hits must be reversed.
    @hits = direction == :horizontal ? hits.reverse : hits

    @class_list = ["ship-#{@direction}"]
    @class_list << 'silhouette' if silhouette
    @class_list.push("col-start-#{@x}", "row-start-#{@y}") if position
    @class_list.push('col-span-1', "row-span-#{size}") if vertical? && position
    @class_list.push('row-span-1', "col-span-#{size}") if horizontal? && position
  end

  def classes
    @class_list.uniq.join(' ')
  end

  def vertical?
    @direction == :vertical
  end

  def horizontal?
    @direction == :horizontal
  end

  def size
    SHIP_SIZES[@type]
  end
end
