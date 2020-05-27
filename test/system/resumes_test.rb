require "application_system_test_case"

class ResumesTest < ApplicationSystemTestCase
  setup do
    @resume = resumes(:one)
  end

  test "visiting the index" do
    visit resumes_url
    assert_selector "h1", text: "Resumes"
  end

  test "creating a Resume" do
    visit resumes_url
    click_on "New Resume"

    fill_in "Email", with: @resume.email
    fill_in "First name", with: @resume.first_name
    fill_in "Label", with: @resume.label
    fill_in "Last name", with: @resume.last_name
    fill_in "Location", with: @resume.location_id
    fill_in "Phone", with: @resume.phone
    fill_in "Summary", with: @resume.summary
    click_on "Create Resume"

    assert_text "Resume was successfully created"
    click_on "Back"
  end

  test "updating a Resume" do
    visit resumes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @resume.email
    fill_in "First name", with: @resume.first_name
    fill_in "Label", with: @resume.label
    fill_in "Last name", with: @resume.last_name
    fill_in "Location", with: @resume.location_id
    fill_in "Phone", with: @resume.phone
    fill_in "Summary", with: @resume.summary
    click_on "Update Resume"

    assert_text "Resume was successfully updated"
    click_on "Back"
  end

  test "destroying a Resume" do
    visit resumes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resume was successfully destroyed"
  end
end
