ActiveAdmin.register Feed do
  permit_params :title, :picture_url, :category, :body

  index do
    id_column
    column :title
    column :picture_url
    column :category
    column :created_at
    column :updated_at
    actions
  end
end
