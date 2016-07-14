require 'test_helper'

class CyclistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cyclists_index_url
    assert_response :success
  end

  test "should get new" do
    get cyclists_new_url
    assert_response :success
  end

  test "should get create" do
    get cyclists_create_url
    assert_response :success
  end

  test "should get edit" do
    get cyclists_edit_url
    assert_response :success
  end

  test "should get update" do
    get cyclists_update_url
    assert_response :success
  end

  test "should get show" do
    get cyclists_show_url
    assert_response :success
  end

  test "should get delete" do
    get cyclists_delete_url
    assert_response :success
  end

end
