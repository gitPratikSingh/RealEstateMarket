require 'test_helper'

class RealStateCompaniesControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  setup do

    @admin = admins(:admin_1)
    @current_user = @admin.user
    @current_user.admin = @admin

    sign_in @admin.user

    @real_estate_company = potential_buyers_lists(:real_estate_company_1)
  end

end
