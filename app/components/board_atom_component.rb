class BoardAtomComponent < ViewComponent::Base
  def initialize(miss: false, hit: false)
    @miss = miss
    @hit = hit
  end

  def classes
    result = []
    result << 'miss' if @miss
    result << 'hit' if @hit
    result.join(' ')
  end
end
