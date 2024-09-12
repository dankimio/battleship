class ShipAtomComponent < ViewComponent::Base
  TYPES = %w[
    front-default
    front-aircraft-carrier
    front-submarine
    middle
    back-aircraft-carrier
    back-default
  ].freeze

  def initialize(type, hover: false, hit: false)
    raise ArgumentError unless TYPES.include?(type)

    @type = type
    @hover = hover
    @hit = hit
  end

  def classes
    result = [ @type ]
    result << "hover" if @hover
    result << "hit" if @hit
    result.join(" ")
  end
end
