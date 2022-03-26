class BoardAtomComponent < ViewComponent::Base
  STATES = {
    nil => '',
    false => 'miss',
    true => 'hit'
  }

  def initialize(state = nil)
    @state = state
  end

  def classes
    STATES[@state]
  end
end
