ActiveAdmin.register RefeeringImage do
  permit_params :link, :category

  index do
    id_column
    column :link
    column :category
    actions
  end
end
