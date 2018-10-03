class CreateRefeeringImage < ActiveRecord::Migration[5.2]
  def change
    create_table :refeering_images do |t|
      t.string :link
      t.integer :category
    end
  end
end
