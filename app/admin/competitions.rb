ActiveAdmin.register Competition do
  permit_params :name, :start_date, :end_date, :city, :country,:category

  index do
    id_column
    column :name
    column :start_date
    column :city
    column :category
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs 'Competition' do
      f.input :name
      f.input :start_date, as: :date_picker
      f.input :end_date, as: :date_picker
      f.input :city
      f.input :country, as: :select, collection: countries
      f.input :category
    end
    f.actions
  end
end
