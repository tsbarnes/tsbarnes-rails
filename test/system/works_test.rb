require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Works"
  end

  test "creating a Work" do
    visit works_url
    click_on "New Work"

    fill_in "Company", with: @work.company
    fill_in "End date", with: @work.end_date
    fill_in "Position", with: @work.position
    fill_in "Resume", with: @work.resume_id
    fill_in "Start date", with: @work.start_date
    fill_in "Summary", with: @work.summary
    fill_in "Website", with: @work.website
    click_on "Create Work"

    assert_text "Work was successfully created"
    click_on "Back"
  end

  test "updating a Work" do
    visit works_url
    click_on "Edit", match: :first

    fill_in "Company", with: @work.company
    fill_in "End date", with: @work.end_date
    fill_in "Position", with: @work.position
    fill_in "Resume", with: @work.resume_id
    fill_in "Start date", with: @work.start_date
    fill_in "Summary", with: @work.summary
    fill_in "Website", with: @work.website
    click_on "Update Work"

    assert_text "Work was successfully updated"
    click_on "Back"
  end

  test "destroying a Work" do
    visit works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work was successfully destroyed"
  end
end
