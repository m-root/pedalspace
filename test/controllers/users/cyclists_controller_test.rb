require 'test_helper'

class Users::CyclistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_cyclists_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_cyclists_edit_url
    assert_response :success
  end

  test "should get create" do
    get users_cyclists_create_url
    assert_response :success
  end

  test "should get show" do
    get users_cyclists_show_url
    assert_response :success
  end

  test "should get delete" do
    get users_cyclists_delete_url
    assert_response :success
  end

  test "should get update" do
    get users_cyclists_update_url
    assert_response :success
  end

end
