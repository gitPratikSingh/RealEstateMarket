require 'test_helper'

class StartPageControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do

    @admin = admins(:admin_1)
    @current_user = @admin.user
    @current_user.admin = @admin

    sign_in @admin.user
  end


  test "should get index" do
    get start_page_index_url
    assert_response :success
  end

end
