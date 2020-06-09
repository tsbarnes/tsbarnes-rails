ActiveAdmin.register Education do
  belongs_to :resume
  navigation_menu :resume
  permit_params :institution, :area, :school_url, :study_type, :start_date, :end_date, :gpa,
                courses_attributes: [:id, :name, :_destroy]

  sidebar "Links", only: [:show, :edit] do
    ul do
      li link_to "Courses", admin_resume_education_courses_path(resource)
    end
  end
end
