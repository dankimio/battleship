require "test_helper"

class BoardRowComponentTest < ViewComponent::TestCase
  setup do
    render_inline(BoardRowComponent.new(Array.new(10, nil)))
  end

  test "should render atoms" do
    assert_selector(".board-atom", count: 10)
  end
end
