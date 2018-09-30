require 'test_helper'

class PotentialBuyersListsControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  setup do

    @admin = admins(:admin_1)
    @current_user = @admin.user
    @current_user.admin = @admin

    sign_in @admin.user

    @potential_buyers_list = potential_buyers_lists(:potential_buyers_list_1)
  end

  test "should get index" do
    get potential_buyers_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_potential_buyers_list_url
    assert_response :success
  end

  test "should create potential_buyers_list" do
    assert_difference('PotentialBuyersList.count') do
      post potential_buyers_lists_url, params: { potential_buyers_list: {  } }
    end

    assert_redirected_to potential_buyers_list_url(PotentialBuyersList.last)
  end

  test "should show potential_buyers_list" do
    get potential_buyers_list_url(@potential_buyers_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_potential_buyers_list_url(@potential_buyers_list)
    assert_response :success
  end

  test "should update potential_buyers_list" do
    patch potential_buyers_list_url(@potential_buyers_list), params: { potential_buyers_list: {  } }
    assert_redirected_to potential_buyers_list_url(@potential_buyers_list)
  end

  test "should destroy potential_buyers_list" do
    assert_difference('PotentialBuyersList.count', -1) do
      delete potential_buyers_list_url(@potential_buyers_list)
    end

    assert_redirected_to potential_buyers_lists_url
  end
end
