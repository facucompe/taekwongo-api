ActiveAdmin.register Poomse do
  permit_params :title, file_attachments_attributes: [:link, :file_type]

  index do
    id_column
    column :title
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :title
      panel 'Images' do
        table_for resource.file_attachments do
          column :link
          column :image do |image|
            image_tag(image.link.url)
          end
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.inputs do
        f.has_many :file_attachments, allow_destroy: true do |i|
          i.input :link, as: :file
          i.input :file_type
        end
      end
      f.actions
    end
  end
end
