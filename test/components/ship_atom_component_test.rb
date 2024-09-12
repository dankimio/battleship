require "test_helper"

class ShipAtomComponentTest < ViewComponent::TestCase
  setup do
    render_inline(ShipAtomComponent.new("middle"))
  end

  test "should render" do
    assert_selector(".ship-atom")
  end

  test "should validate type" do
    assert_raise ArgumentError do
      render_inline(ShipAtomComponent.new(SecureRandom.hex))
    end
  end

  test "should render nucleus to display hit state" do
    assert_selector(".ship-atom .nucleus")
  end

  test "should render type class" do
    ShipAtomComponent::TYPES.each do |type|
      render_inline(ShipAtomComponent.new(type))
      assert_selector(".ship-atom.#{type}")
    end
  end

  test "should render hits" do
    render_inline(ShipAtomComponent.new("middle", hit: true))
    assert_selector(".ship-atom.hit")
  end
end
