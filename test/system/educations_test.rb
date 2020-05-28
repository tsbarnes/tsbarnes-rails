require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    @education = educations(:one)
  end

  test "visiting the index" do
    visit educations_url
    assert_selector "h1", text: "Educations"
  end

  test "creating a Education" do
    visit educations_url
    click_on "New Education"

    fill_in "Area", with: @education.area
    fill_in "End date", with: @education.end_date
    fill_in "Gpa", with: @education.gpa
    fill_in "Institution", with: @education.institution
    fill_in "Resume", with: @education.resume_id
    fill_in "School url", with: @education.school_url
    fill_in "Start date", with: @education.start_date
    fill_in "Study type", with: @education.study_type
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "updating a Education" do
    visit educations_url
    click_on "Edit", match: :first

    fill_in "Area", with: @education.area
    fill_in "End date", with: @education.end_date
    fill_in "Gpa", with: @education.gpa
    fill_in "Institution", with: @education.institution
    fill_in "Resume", with: @education.resume_id
    fill_in "School url", with: @education.school_url
    fill_in "Start date", with: @education.start_date
    fill_in "Study type", with: @education.study_type
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "destroying a Education" do
    visit educations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education was successfully destroyed"
  end
end
