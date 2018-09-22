require "application_system_test_case"

class HouseHuntersTest < ApplicationSystemTestCase
  setup do
    @house_hunter = house_hunters(:one)
  end

  test "visiting the index" do
    visit house_hunters_url
    assert_selector "h1", text: "House Hunters"
  end

  test "creating a House hunter" do
    visit house_hunters_url
    click_on "New House Hunter"

    fill_in "Email", with: @house_hunter.email
    fill_in "Name", with: @house_hunter.name
    fill_in "Password", with: @house_hunter.password
    fill_in "Phone", with: @house_hunter.phone
    fill_in "Preferred Contact", with: @house_hunter.preferred_contact
    click_on "Create House hunter"

    assert_text "House hunter was successfully created"
    click_on "Back"
  end

  test "updating a House hunter" do
    visit house_hunters_url
    click_on "Edit", match: :first

    fill_in "Email", with: @house_hunter.email
    fill_in "Name", with: @house_hunter.name
    fill_in "Password", with: @house_hunter.password
    fill_in "Phone", with: @house_hunter.phone
    fill_in "Preferred Contact", with: @house_hunter.preferred_contact
    click_on "Update House hunter"

    assert_text "House hunter was successfully updated"
    click_on "Back"
  end

  test "destroying a House hunter" do
    visit house_hunters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House hunter was successfully destroyed"
  end
end
