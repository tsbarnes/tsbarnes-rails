ActiveAdmin.register Resume do
  includes :profiles, :skills, :works, :volunteers, :educations, :languages, :interests, :references
  
  permit_params :label, :email, :phone, :summary, :name, :picture,
    :address, :city, :region, :region_shorthand, :postal_code, :country_code,
    profiles_attributes: [:id, :network, :username, :url, :icon_name, :order, :_destroy],
    skills_attributes: [:id, :name, :url, :level, :order, :_destroy],
    volunteers_attributes: [:id, :organization, :position, :website, :start_date, :end_date, :summary, :_destroy],
    works_attributes: [:id, :company, :position, :website, :start_date, :end_date, :summary, :_destroy],
    educations_attributes: [:id, :institution, :area, :school_url, :study_type, :start_date, :end_date, :gpa, :_destroy],
    languages_attributes: [:id, :name, :fluency, :order, :_destroy],
    interests_attributes: [:id, :name, :order, :_destroy],
    references_attributes: [:id, :name, :reference, :order, :_destroy]

  collection_action :import_json, method: :put do
    # Resume.create_from_json! params
    redirect_to collection_path, notice: 'JSON successfully imported!'
  end

  index do
    selectable_column
    column :label
    actions
  end

  sidebar "Details", only: [:show, :edit] do
    ul do
      li link_to "Profiles", admin_resume_profiles_path(resource)
      li link_to "Skills", admin_resume_skills_path(resource)
      li link_to "Interests", admin_resume_interests_path(resource)
      li link_to "Volunteer Experience", admin_resume_volunteers_path(resource)
      li link_to "Work Experience", admin_resume_works_path(resource)
      li link_to "Education", admin_resume_educations_path(resource)
      li link_to "Languages", admin_resume_languages_path(resource)
      li link_to "References", admin_resume_references_path(resource)
    end
  end

  show do
    panel "Basic Info" do
      attributes_table_for resume do
        row :picture do |i|
          if i.picture.present?
            image_tag url_for(i.picture.variant(resize_to_limit: [100,100]))
          else
            content_tag(:span, "No picture yet")
          end
        end
        row :name
        row :label
        row :email
        row :phone
        row :summary
        row :address
        row :city
        row :region
        row :region_shorthand
        row :postal_code
        row :country_code
      end
    end
    
    panel "Profiles" do
      table_for resume.profiles do
        column :network
        column :username
        column :url
      end
    end

    panel "Skills" do
      table_for resume.skills do
        column :name
        column :level
        column :url
      end
    end

    panel "Interests" do
      table_for resume.interests do
        column :name
      end
    end

    panel "Education" do
      table_for resume.educations do
        column :institution
        column :area
        column :school_url
        column :study_type
        column :start_date
        column :end_date
        column :gpa
      end
    end
  end

  form do |f|
    f.inputs 'Basic Info' do
      f.input :picture, as: :file, :hint => f.object.picture.present? \
        ? image_tag(f.object.picture.variant(resize_to_limit: [100,100]))
        : content_tag(:span, "no picture yet")
      f.input :name
      f.input :label
    end

    f.inputs 'Contact' do
      f.input :email
      f.input :phone
    end
    f.inputs 'Summary', :summary
    f.inputs 'Location' do
      f.input :address
      f.input :city
      f.input :region
      f.input :region_shorthand
      f.input :postal_code
      f.input :country_code
    end
    f.inputs do
      f.has_many :profiles, sortable: :order, sortable_start: 1 do |t|
        t.input :network
        t.input :username
        t.input :url
        t.input :icon_name
      end
    end
    f.inputs do
      f.has_many :skills, sortable: :order, sortable_start: 1 do |t|
        t.input :name
        t.input :level
        t.input :url
        t.has_many :keywords, sortable: :order, sortable_start: 1 do |k|
          k.input :name
        end
      end
    end
    f.inputs do
      f.has_many :interests, sortable: :order, sortable_start: 1 do |t|
        t.input :name
        t.has_many :keywords, sortable: :order, sortable_start: 1 do |k|
          k.input :name
        end
      end
    end
    f.inputs do
      f.has_many :educations do |t|
        t.input :institution
        t.input :area
        t.input :school_url
        t.input :study_type
        t.input :start_date
        t.input :end_date
        t.input :gpa
        t.has_many :courses, sortable: :order, sortable_start: 1 do |c|
          c.input :name
        end
      end
    end
    f.inputs do
      f.has_many :volunteers do |t|
        t.input :organization
        t.input :position
        t.input :website
        t.input :start_date
        t.input :end_date
        t.input :summary
        t.has_many :highlights, sortable: :order, sortable_start: 1 do |c|
          c.input :description
        end
      end
    end
    f.inputs do
      f.has_many :works do |t|
        t.input :company
        t.input :position
        t.input :website
        t.input :start_date
        t.input :end_date
        t.input :summary
        t.has_many :highlights, sortable: :order, sortable_start: 1 do |c|
          c.input :description
        end
      end
    end
    f.inputs do
      f.has_many :references, sortable: :order, sortable_start: 1 do |t|
        t.input :name
        t.input :reference
      end
    end
    f.actions
  end
end
