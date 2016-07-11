require 'test_helper'

class Mechanics::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mechanics_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get mechanics_reviews_create_url
    assert_response :success
  end

  test "should get edit" do
    get mechanics_reviews_edit_url
    assert_response :success
  end

  test "should get update" do
    get mechanics_reviews_update_url
    assert_response :success
  end

  test "should get show" do
    get mechanics_reviews_show_url
    assert_response :success
  end

end
