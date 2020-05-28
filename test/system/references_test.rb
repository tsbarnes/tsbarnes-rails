require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase
  setup do
    @reference = references(:one)
  end

  test "visiting the index" do
    visit references_url
    assert_selector "h1", text: "References"
  end

  test "creating a Reference" do
    visit references_url
    click_on "New Reference"

    fill_in "Name", with: @reference.name
    fill_in "Order", with: @reference.order
    fill_in "Reference", with: @reference.reference
    fill_in "Resume", with: @reference.resume_id
    click_on "Create Reference"

    assert_text "Reference was successfully created"
    click_on "Back"
  end

  test "updating a Reference" do
    visit references_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reference.name
    fill_in "Order", with: @reference.order
    fill_in "Reference", with: @reference.reference
    fill_in "Resume", with: @reference.resume_id
    click_on "Update Reference"

    assert_text "Reference was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference" do
    visit references_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference was successfully destroyed"
  end
end
