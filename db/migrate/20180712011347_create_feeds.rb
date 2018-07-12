class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.string :title,               null: false, default: ''
      t.string :picture_url,         null: false, default: ''
      t.text :body
      t.integer :category,           null: false

      t.timestamps
    end
  end
end
