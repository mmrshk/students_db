ActiveAdmin.register Book do
  permit_params :name, :active, :author_id, :publishing_id
end
