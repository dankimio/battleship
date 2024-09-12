require "test_helper"

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get components_url
    assert_response :success
  end

  test "should get board" do
    get board_components_url
    assert_response :success
  end

  test "should get colors" do
    get colors_components_url
    assert_response :success
  end

  test "should get fonts" do
    get fonts_components_url
    assert_response :success
  end

  test "should get interface" do
    get interface_components_url
    assert_response :success
  end

  test "should get ships" do
    get ships_components_url
    assert_response :success
  end
end
