require 'test_helper'

class GraveyardComponentTest < ViewComponent::TestCase
  setup do
    render_inline(GraveyardComponent.new)
  end

  test 'should render' do
    assert_selector('p', text: 'Graveyard')
  end
end
