class ShipAtomComponent < ViewComponent::Base
  def initialize(type, hover: false, hit: false)
    @type = type
    @hover = hover
    @hit = hit
  end

  def classes
    result = [@type]
    result << 'hover' if @hover
    result << 'hit' if @hit
    result.join(' ')
  end
end
