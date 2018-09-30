ActiveAdmin.register Rulespdf do
  permit_params :version, :pdf_url

  index do
    id_column
    column :version
    column :pdf_url
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs 'Rulespdf' do
      f.input :version
      f.input :pdf_url
    end
    f.actions
  end
end
