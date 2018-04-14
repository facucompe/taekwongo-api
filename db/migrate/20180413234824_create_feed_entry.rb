class CreateFeedEntry < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_entries do |t|
      t.string :title,  null: false, default: ''
      t.text :content,  null: false, default: ''
      t.date :date,     default: Date.today
      t.string :pic_url

      t.timestamps
    end
  end
end
