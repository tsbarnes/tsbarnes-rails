ActiveAdmin.register Resume do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :label, :email, :phone, :summary
  #
  # or
  #
  # permit_params do
  #   permitted = [:label, :email, :phone, :summary, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
