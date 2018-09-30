require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:admin_1)
    @current_user = @admin.user
    @current_user.admin = @admin

    puts @current_user.inspect
    puts @current_user.admin.inspect
  end

  test "should get index" do
    get admins_url
    assert_response :success
  end
/
  test "should get new" do
    get new_admin_url
    assert_response :success
  end


  test "should show admin" do
    get admin_url(@admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_url(@admin)
    assert_response :success
  end/
end
