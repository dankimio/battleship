require 'test_helper'

class ShipComponentTest < ViewComponent::TestCase
  setup do
    with_variant :aircraft_carrier do
      render_inline(ShipComponent.new(type: :aircraft_carrier, direction: :horizontal))
    end
  end

  test 'should render' do
    assert_selector('.ship')
  end

  test 'should validate type' do
    assert_raise ArgumentError do
      render_inline(ShipComponent.new(direction: :horizontal, type: :abc))
    end
  end

  test 'should render spacers' do
    assert_selector('.ship .spacer.spacer-edge', count: 2)
    assert_selector('.ship .spacer.spacer-between')
  end
end
