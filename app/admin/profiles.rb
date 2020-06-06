ActiveAdmin.register Profile do
  permit_params :resume_id, :network, :icon_name, :username, :url, :order
end
