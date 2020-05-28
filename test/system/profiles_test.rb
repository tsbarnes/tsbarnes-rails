require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Icon name", with: @profile.icon_name
    fill_in "Network", with: @profile.network
    fill_in "Order", with: @profile.order
    fill_in "Resume", with: @profile.resume_id
    fill_in "Url", with: @profile.url
    fill_in "Username", with: @profile.username
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Icon name", with: @profile.icon_name
    fill_in "Network", with: @profile.network
    fill_in "Order", with: @profile.order
    fill_in "Resume", with: @profile.resume_id
    fill_in "Url", with: @profile.url
    fill_in "Username", with: @profile.username
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
