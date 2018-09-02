class ChangeImageTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :images, :file_attachments
    add_column :file_attachments, :file_type, :integer
  end
end
