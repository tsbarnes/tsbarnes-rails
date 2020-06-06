ActiveAdmin.register Resume do
  includes :location, :profiles, :skills
  
  permit_params :label, :email, :phone, :summary, :name,
    :address, :city, :region, :region_shorthand, :postal_code, :country_code,
    profiles_attributes: [:network, :username, :url, :icon_name, :order, :_destroy],
    skills_attributes: [:name, :url, :level, :order],
    educations_attributes: [:institution, :area, :school_url, :study_type, :start_date, :end_date, :gpa]

  collection_action :import_json, method: :put do
    # Resume.create_from_json! params
    redirect_to collection_path, notice: 'JSON successfully imported!'
  end

  show do
    panel "Basic Info" do
      attributes_table_for resume do
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
  end

  form do |f|
    f.inputs 'Basic Info' do
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
      f.has_many :skills do |t|
        t.input :name
        t.input :level
        t.input :url
        t.has_many :keywords do |k|
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
      end
    end
    f.actions
  end
end
