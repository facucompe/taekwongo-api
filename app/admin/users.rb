ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :country, :province, :birth_date,
                :postal_code, :address, :password, :password_confirmation

  index do
    id_column
    column :email
    column :first_name
    column :last_name
    column :birth_date
    column :country
    actions
  end

  form do |f|
    f.inputs 'User' do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :gender
      f.input :birth_date, as: :date_picker
      f.input :country, as: :select, collection: countries
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
