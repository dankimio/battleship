require "test_helper"

class BoardComponentTest < ViewComponent::TestCase
  setup do
    render_inline(BoardComponent.new(Board.empty(:main)))
  end

  test "should render second board for ships" do
    assert_selector(".board-main", count: 2)
  end

  test "should render atoms" do
    assert_selector(".board-atom", count: 100)
  end

  test "should render numbers" do
    assert_selector(".board-numbers > *", count: 10)
  end

  test "should render letters" do
    assert_selector(".board-letters > *", count: 10 + 2)
  end
end
