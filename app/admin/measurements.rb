ActiveAdmin.register Measurement do
  permit_params :amount, :training_id

  index do
    id_column
    column :magnitude
    column :training_id
    column :created_at
    column :updated_at
    actions
  end
end
