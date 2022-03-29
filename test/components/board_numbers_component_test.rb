require 'test_helper'

class BoardNumbersComponentTest < ViewComponent::TestCase
  setup do
    render_inline(BoardLettersComponent.new)
  end

  test 'should render' do
    assert_selector('.board-numbers > *', count: 10)
  end
end
