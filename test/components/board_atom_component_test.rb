require "test_helper"

class BoardAtomComponentTest < ViewComponent::TestCase
  test "should render" do
    render_inline(BoardAtomComponent.new)

    assert_selector(".board-atom")
    assert_no_selector(".board-atom > *")
  end

  test "should render default state" do
    render_inline(BoardAtomComponent.new(nil))

    assert_no_selector(".miss")
    assert_no_selector(".hit")
  end

  test "should render missed state" do
    render_inline(BoardAtomComponent.new(false))

    assert_selector(".miss")
    assert_no_selector(".hit")
  end

  test "should render hit state" do
    render_inline(BoardAtomComponent.new(true))

    assert_no_selector(".miss")
    assert_selector(".hit")
  end
end
