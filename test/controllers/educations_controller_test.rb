require 'test_helper'

class EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education = educations(:one)
  end

  test "should get index" do
    get educations_url
    assert_response :success
  end

  test "should get new" do
    get new_education_url
    assert_response :success
  end

  test "should create education" do
    assert_difference('Education.count') do
      post educations_url, params: { education: { area: @education.area, end_date: @education.end_date, gpa: @education.gpa, institution: @education.institution, resume_id: @education.resume_id, school_url: @education.school_url, start_date: @education.start_date, study_type: @education.study_type } }
    end

    assert_redirected_to education_url(Education.last)
  end

  test "should show education" do
    get education_url(@education)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_url(@education)
    assert_response :success
  end

  test "should update education" do
    patch education_url(@education), params: { education: { area: @education.area, end_date: @education.end_date, gpa: @education.gpa, institution: @education.institution, resume_id: @education.resume_id, school_url: @education.school_url, start_date: @education.start_date, study_type: @education.study_type } }
    assert_redirected_to education_url(@education)
  end

  test "should destroy education" do
    assert_difference('Education.count', -1) do
      delete education_url(@education)
    end

    assert_redirected_to educations_url
  end
end
