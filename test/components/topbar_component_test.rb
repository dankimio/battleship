require "test_helper"

class TopbarComponentTest < ViewComponent::TestCase
  setup do
    render_inline(TopbarComponent.new)
  end

  test "should render" do
    assert_selector("div")
  end

  test "should render logo" do
    assert_selector("div > img")
  end
end
