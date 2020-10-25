require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get in" do
    get users_in_url
    assert_response :success
  end

  test "should get out" do
    get users_out_url
    assert_response :success
  end

end
