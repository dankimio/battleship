require "test_helper"

class BoardLettersComponentTest < ViewComponent::TestCase
  setup do
    render_inline(BoardLettersComponent.new)
  end

  test "should render" do
    assert_selector(".board-letters > *", count: 10 + 2)
  end
end
