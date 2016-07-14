require 'test_helper'

class ReviewOfMechanicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get review_of_mechanics_index_url
    assert_response :success
  end

  test "should get new" do
    get review_of_mechanics_new_url
    assert_response :success
  end

  test "should get create" do
    get review_of_mechanics_create_url
    assert_response :success
  end

  test "should get edit" do
    get review_of_mechanics_edit_url
    assert_response :success
  end

  test "should get update" do
    get review_of_mechanics_update_url
    assert_response :success
  end

  test "should get show" do
    get review_of_mechanics_show_url
    assert_response :success
  end

end
