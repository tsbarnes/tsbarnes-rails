require "application_system_test_case"

class VolunteersTest < ApplicationSystemTestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "visiting the index" do
    visit volunteers_url
    assert_selector "h1", text: "Volunteers"
  end

  test "creating a Volunteer" do
    visit volunteers_url
    click_on "New Volunteer"

    fill_in "End date", with: @volunteer.end_date
    fill_in "Organization", with: @volunteer.organization
    fill_in "Position", with: @volunteer.position
    fill_in "Resume", with: @volunteer.resume_id
    fill_in "Start date", with: @volunteer.start_date
    fill_in "Summary", with: @volunteer.summary
    fill_in "Website", with: @volunteer.website
    click_on "Create Volunteer"

    assert_text "Volunteer was successfully created"
    click_on "Back"
  end

  test "updating a Volunteer" do
    visit volunteers_url
    click_on "Edit", match: :first

    fill_in "End date", with: @volunteer.end_date
    fill_in "Organization", with: @volunteer.organization
    fill_in "Position", with: @volunteer.position
    fill_in "Resume", with: @volunteer.resume_id
    fill_in "Start date", with: @volunteer.start_date
    fill_in "Summary", with: @volunteer.summary
    fill_in "Website", with: @volunteer.website
    click_on "Update Volunteer"

    assert_text "Volunteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteer" do
    visit volunteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteer was successfully destroyed"
  end
end
