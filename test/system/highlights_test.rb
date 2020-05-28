require "application_system_test_case"

class HighlightsTest < ApplicationSystemTestCase
  setup do
    @highlight = highlights(:one)
  end

  test "visiting the index" do
    visit highlights_url
    assert_selector "h1", text: "Highlights"
  end

  test "creating a Highlight" do
    visit highlights_url
    click_on "New Highlight"

    fill_in "Description", with: @highlight.description
    fill_in "Job", with: @highlight.job_id
    fill_in "Order", with: @highlight.order
    click_on "Create Highlight"

    assert_text "Highlight was successfully created"
    click_on "Back"
  end

  test "updating a Highlight" do
    visit highlights_url
    click_on "Edit", match: :first

    fill_in "Description", with: @highlight.description
    fill_in "Job", with: @highlight.job_id
    fill_in "Order", with: @highlight.order
    click_on "Update Highlight"

    assert_text "Highlight was successfully updated"
    click_on "Back"
  end

  test "destroying a Highlight" do
    visit highlights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Highlight was successfully destroyed"
  end
end
