ActiveAdmin.register User do
  actions :index, :destroy
  index do
    id_column
    column :email
    column :name
    column :country
    column :province
    column :postal_code
    column :address
    actions
  end

  filter :email
  filter :name
  filter :country
  filter :province
  filter :postal_code
  filter :address
end
