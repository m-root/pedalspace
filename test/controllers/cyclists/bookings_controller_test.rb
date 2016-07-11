require 'test_helper'

class Cyclists::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cyclists_bookings_new_url
    assert_response :success
  end

  test "should get create" do
    get cyclists_bookings_create_url
    assert_response :success
  end

  test "should get edit" do
    get cyclists_bookings_edit_url
    assert_response :success
  end

  test "should get update" do
    get cyclists_bookings_update_url
    assert_response :success
  end

  test "should get show" do
    get cyclists_bookings_show_url
    assert_response :success
  end

end
