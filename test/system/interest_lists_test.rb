require "application_system_test_case"

class InterestListsTest < ApplicationSystemTestCase
  setup do
    @interest_list = interest_lists(:interest_list_1)
  end

  test "visiting the index" do
    visit interest_lists_url
    assert_selector "h1", text: "Interest Lists"
  end

  test "creating a Interest list" do
    visit interest_lists_url
    click_on "New Interest List"

    fill_in "House Hunter", with: @interest_list.house_hunter_id
    click_on "Create Interest list"

    assert_text "Interest list was successfully created"
    click_on "Back"
  end

  test "updating a Interest list" do
    visit interest_lists_url
    click_on "Edit", match: :first

    fill_in "House Hunter", with: @interest_list.house_hunter_id
    click_on "Update Interest list"

    assert_text "Interest list was successfully updated"
    click_on "Back"
  end

  test "destroying a Interest list" do
    visit interest_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interest list was successfully destroyed"
  end
end
