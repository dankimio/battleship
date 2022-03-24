class CruiserComponent < ViewComponent::Base
  SIZE = 2

  def initialize(direction:, position:, hits:)
    @direction = direction
    @x, @y = position
    @hits = hits
  end

  def classes
    result = [
      "col-start-#{@x}",
      "row-start-#{@y}",
      "ship-#{@direction}"
    ]

    "row-start-4"
    "col-start-4"

    if vertical?
      result << 'col-span-1'
      result << "row-span-#{SIZE}"
    end

    if horizontal?
      result << 'row-span-1'
      result << "col-span-#{SIZE}"
    end

    result.join(' ')
  end

  def vertical?
    @direction == :vertical
  end

  def horizontal?
    @direction == :horizontal
  end
end
