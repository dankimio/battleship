require "test_helper"

class BoardNameComponentTest < ViewComponent::TestCase
  test "should render" do
    render_inline(BoardNameComponent.new(:main))
    assert_selector(".board-name")
  end

  test "should render main player's name" do
    render_inline(BoardNameComponent.new(:main))
    assert_selector(".main")
    assert_text("Your fleet")
  end

  test "should render opponent's name" do
    render_inline(BoardNameComponent.new(:opponent))
    assert_selector(".opponent")
    assert_text("Opponent")
  end
end
