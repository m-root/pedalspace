require 'test_helper'

class Cyclists::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cyclists_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get cyclists_reviews_create_url
    assert_response :success
  end

  test "should get edit" do
    get cyclists_reviews_edit_url
    assert_response :success
  end

  test "should get update" do
    get cyclists_reviews_update_url
    assert_response :success
  end

  test "should get show" do
    get cyclists_reviews_show_url
    assert_response :success
  end

end
