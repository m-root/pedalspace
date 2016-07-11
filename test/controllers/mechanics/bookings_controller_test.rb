require 'test_helper'

class Mechanics::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get mechanics_bookings_edit_url
    assert_response :success
  end

  test "should get update" do
    get mechanics_bookings_update_url
    assert_response :success
  end

  test "should get show" do
    get mechanics_bookings_show_url
    assert_response :success
  end

end
