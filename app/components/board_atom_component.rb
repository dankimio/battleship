class BoardAtomComponent < ViewComponent::Base
  STATES = {
    nil => '',
    false => 'miss',
    true => 'hit'
  }.freeze

  def initialize(state = nil, hover: false)
    @state = state
    @hover = hover
  end

  def classes
    result = [STATES[@state]]
    result << 'hover' if @hover
    result.join(' ')
  end
end
