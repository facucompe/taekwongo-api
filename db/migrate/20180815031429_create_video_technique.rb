class CreateVideoTechnique < ActiveRecord::Migration[5.2]
  def change
    create_table :video_techniques do |t|
      t.string :title,               null: false, default: ''
      t.integer :video_type,         null: false, default: 0
      t.string :link
    end
  end
end
