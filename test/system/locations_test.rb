require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "creating a Location" do
    visit locations_url
    click_on "New Location"

    fill_in "Address", with: @location.address
    fill_in "City", with: @location.city
    fill_in "Postal code", with: @location.postal_code
    fill_in "Region", with: @location.region
    fill_in "Region shorthand", with: @location.region_shorthand
    fill_in "Resume", with: @location.resume_id
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit locations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @location.address
    fill_in "City", with: @location.city
    fill_in "Postal code", with: @location.postal_code
    fill_in "Region", with: @location.region
    fill_in "Region shorthand", with: @location.region_shorthand
    fill_in "Resume", with: @location.resume_id
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
