require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  setup do

    @house_hunter = house_hunters(:house_hunter_1)
    @current_user = @house_hunter.user
    @current_user.house_hunter = @house_hunter

    sign_in @current_user

    @house = houses(:house_1)
  end

  test "should get index" do
    get houses_url
    assert_response :success
  end

  test "should get new" do
    get new_house_url
    assert_response :success
  end

  test "should create house" do
    assert_difference('House.count') do
      post houses_url, params: { house: { basement: @house.basement, company_id: @house.real_estate_company_id, current_owner: @house.current_owner, house_id: @house.id, list_price: @house.list_price, location: @house.location, num_of_floors: @house.num_of_floors, potential_buyers: @house.potential_buyers, realtor_contact: @house.realtor_contact, square_footage: @house.square_footage, style: @house.style, year_built: @house.year_built } }
    end

    assert_redirected_to house_url(House.last)
  end

  test "should show house" do
    get house_url(@house)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_url(@house)
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: { basement: @house.basement, company_id: @house.real_estate_company_id, current_owner: @house.current_owner, house_id: @house.id, list_price: @house.list_price, location: @house.location, num_of_floors: @house.num_of_floors, potential_buyers: @house.potential_buyers, realtor_contact: @house.realtor_contact, square_footage: @house.square_footage, style: @house.style, year_built: @house.year_built } }
    assert_redirected_to house_url(@house)
  end

  test "should destroy house" do
    assert_difference('House.count', -1) do
      delete house_url(@house)
    end

    assert_redirected_to houses_url
  end
end
