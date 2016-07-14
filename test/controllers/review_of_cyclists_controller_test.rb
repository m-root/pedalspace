require 'test_helper'

class ReviewOfCyclistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get review_of_cyclists_index_url
    assert_response :success
  end

  test "should get new" do
    get review_of_cyclists_new_url
    assert_response :success
  end

  test "should get create" do
    get review_of_cyclists_create_url
    assert_response :success
  end

  test "should get edit" do
    get review_of_cyclists_edit_url
    assert_response :success
  end

  test "should get update" do
    get review_of_cyclists_update_url
    assert_response :success
  end

  test "should get show" do
    get review_of_cyclists_show_url
    assert_response :success
  end

end
