ActiveAdmin.register Competition do
  permit_params :name, :date, :city, :category

  index do
    id_column
    column :name
    column :date
    column :city
    column :category
    column :created_at
    column :updated_at
    actions
  end
end
