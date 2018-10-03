class RemoveImageUrl < ActiveRecord::Migration[5.2]
  def change
    remove_column :feeds, :picture_url
  end
end
