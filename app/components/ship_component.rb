class ShipComponent < ViewComponent::Base
  def initialize(direction:, position:, hits:)
    @direction = direction
    @x, @y = position

    # Horizontal ships are rendered from left to right.
    # Vertical ships are rendered bottom to top,
    # since we want to display front at the top,
    # therefore @hits must be reversed.
    @hits = direction == :horizontal ? hits.reverse : hits

    @class_list = [
      "col-start-#{@x}",
      "row-start-#{@y}",
      "ship-#{@direction}"
    ]
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
