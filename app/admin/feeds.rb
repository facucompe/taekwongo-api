ActiveAdmin.register Feed do
  permit_params :title, :category, :body, feed_images_attributes: %i[id link]

  index do
    id_column
    column :title
    column :category
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :category
      f.inputs do
        f.has_many :feed_images, allow_destroy: true do |i|
          i.input :link, as: :file
        end
      end
      f.actions
    end
  end
end
