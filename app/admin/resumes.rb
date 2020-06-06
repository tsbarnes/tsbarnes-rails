ActiveAdmin.register Resume do
  includes :location, :profiles
  
  permit_params :label, :email, :phone, :summary, :name,
    location_attributes: [:address, :city, :region, :region_shorthand, :postal_code],
    profiles_attributes: [:network, :username, :url, :icon_name, :_destroy]

  collection_action :import_json, method: :put do
    # Resume.create_from_json! params
    redirect_to collection_path, notice: 'JSON successfully imported!'
  end

  controller do
    def new
      @resume = Resume.new
      @person.location = Location.new
    end
  end

  show do
    panel "Basic Info" do
      attributes_table_for resume do
        row :name
        row :label
        row :email
        row :phone
        row :summary
      end
    end
    
    panel "Location" do
      table_for resume.location do
        column :address
        column :city
        column :region
        column :region_shorthand
        column :postal_code
      end
    end

    panel "Profiles" do
      table_for resume.profiles do
        column :network
        column :username
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
      f.has_many :location, new_record: false do |a|
        a.input :address
        a.input :city
        a.input :region
        a.input :region_shorthand
        a.input :postal_code
      end
    end
    f.inputs do
      f.has_many :profiles, sortable: :order, sortable_start: 1 do |t|
        t.input :network
        t.input :username
        t.input :url
        t.input :icon_name
      end
    end
    f.actions
  end
end
