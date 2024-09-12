require "test_helper"

class ShipyardComponentTest < ViewComponent::TestCase
  setup do
    render_inline(ShipyardComponent.new)
  end

  test "should render" do
    assert_selector("p", text: "Shipyard")
  end
end
