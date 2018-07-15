ActiveAdmin.register User do
  permit_params :email, :name, :country, :province, :postal_code, :address,
                :password, :password_confirmation

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

  form do |f|
    f.inputs 'User' do
      f.input :email
      f.input :name
      f.input :country, as: :select, collection: countries
      f.input :province
      f.input :postal_code
      f.input :address
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  filter :email
  filter :name
  filter :country
  filter :province
  filter :postal_code
  filter :address
end

def countries
  ActionView::Helpers::FormOptionsHelper::COUNTRIES
end
