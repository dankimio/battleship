class ShipComponent < ViewComponent::Base
  def initialize(direction:, position: nil, hits:, silhouette:)
    @direction = direction
    @x, @y = position

    # Horizontal ships are rendered from left to right.
    # Vertical ships are rendered bottom to top,
    # since we want to display front at the top,
    # therefore @hits must be reversed.
    @hits = direction == :horizontal ? hits.reverse : hits

    @class_list = [
      "ship-#{@direction}"
    ]
    @class_list.push("col-start-#{@x}", "row-start-#{@y}") if position
    @class_list << 'silhouette' if silhouette
  end

  def classes
    raise NoMethodError
  end

  def vertical?
    @direction == :vertical
  end

  def horizontal?
    @direction == :horizontal
  end
end
