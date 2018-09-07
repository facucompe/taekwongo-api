class CreateFeedImages < ActiveRecord::Migration[5.2]
  def change
    create_table :feed_images do |t|
      t.string :link
      t.belongs_to :feed, index: true      
    end
  end
end
