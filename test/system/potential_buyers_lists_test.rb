require "application_system_test_case"

class PotentialBuyersListsTest < ApplicationSystemTestCase
  setup do
    @potential_buyers_list = potential_buyers_lists(:one)
  end

  test "visiting the index" do
    visit potential_buyers_lists_url
    assert_selector "h1", text: "Potential Buyers Lists"
  end

  test "creating a Potential buyers list" do
    visit potential_buyers_lists_url
    click_on "New Potential Buyers List"

    click_on "Create Potential buyers list"

    assert_text "Potential buyers list was successfully created"
    click_on "Back"
  end

  test "updating a Potential buyers list" do
    visit potential_buyers_lists_url
    click_on "Edit", match: :first

    click_on "Update Potential buyers list"

    assert_text "Potential buyers list was successfully updated"
    click_on "Back"
  end

  test "destroying a Potential buyers list" do
    visit potential_buyers_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Potential buyers list was successfully destroyed"
  end
end
