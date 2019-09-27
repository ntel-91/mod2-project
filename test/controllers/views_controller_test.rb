require 'test_helper'

class ViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get views_index_url
    assert_response :success
  end

  test "should get show" do
    get views_show_url
    assert_response :success
  end

  test "should get new" do
    get views_new_url
    assert_response :success
  end

  test "should get create" do
    get views_create_url
    assert_response :success
  end

  test "should get edit" do
    get views_edit_url
    assert_response :success
  end

  test "should get update" do
    get views_update_url
    assert_response :success
  end

  test "should get destroy" do
    get views_destroy_url
    assert_response :success
  end

end
