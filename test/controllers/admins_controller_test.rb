require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do

    @admin = admins(:admin_1)
    @current_user = @admin.user
    @current_user.admin = @admin

    sign_in @admin.user
  end

  test "should get index" do
    get admins_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_url
    assert_response :success
  end


  test "should show admin" do
    get admin_url(@admin)
    assert_response :success
  end
end
