require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language = languages(:one)
  end

  test "should get index" do
    get languages_url
    assert_response :success
  end

  test "should get new" do
    get new_language_url
    assert_response :success
  end

  test "should create language" do
    assert_difference('Language.count') do
      post languages_url, params: { language: { fluency: @language.fluency, name: @language.name, order: @language.order, resume_id: @language.resume_id } }
    end

    assert_redirected_to language_url(Language.last)
  end

  test "should show language" do
    get language_url(@language)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_url(@language)
    assert_response :success
  end

  test "should update language" do
    patch language_url(@language), params: { language: { fluency: @language.fluency, name: @language.name, order: @language.order, resume_id: @language.resume_id } }
    assert_redirected_to language_url(@language)
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete language_url(@language)
    end

    assert_redirected_to languages_url
  end
end
