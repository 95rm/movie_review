require "test_helper"

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_page" do
    get public_users_my_page_url
    assert_response :success
  end

  test "should get show" do
    get public_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_users_edit_url
    assert_response :success
  end

  test "should get likes" do
    get public_users_likes_url
    assert_response :success
  end

  test "should get stop" do
    get public_users_stop_url
    assert_response :success
  end
end
