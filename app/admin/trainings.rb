ActiveAdmin.register Training do
  permit_params :title, :type, :user_id

  index do
    id_column
    column :title
	column :type
	column :user_id
    column :created_at
    column :updated_at
    actions
  end
end
