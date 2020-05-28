require "application_system_test_case"

class KeywordsTest < ApplicationSystemTestCase
  setup do
    @keyword = keywords(:one)
  end

  test "visiting the index" do
    visit keywords_url
    assert_selector "h1", text: "Keywords"
  end

  test "creating a Keyword" do
    visit keywords_url
    click_on "New Keyword"

    fill_in "Name", with: @keyword.name
    fill_in "Order", with: @keyword.order
    fill_in "Owner", with: @keyword.owner_id
    click_on "Create Keyword"

    assert_text "Keyword was successfully created"
    click_on "Back"
  end

  test "updating a Keyword" do
    visit keywords_url
    click_on "Edit", match: :first

    fill_in "Name", with: @keyword.name
    fill_in "Order", with: @keyword.order
    fill_in "Owner", with: @keyword.owner_id
    click_on "Update Keyword"

    assert_text "Keyword was successfully updated"
    click_on "Back"
  end

  test "destroying a Keyword" do
    visit keywords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Keyword was successfully destroyed"
  end
end
