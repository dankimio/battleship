class BoardAtomComponent < ViewComponent::Base
  def initialize(miss: false)
    @miss = miss
  end

  def miss?
    @miss
  end
end
