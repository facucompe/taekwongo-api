class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :title,               null: false, default: ''
      t.string :user_id,               null: false, default: ''
      t.integer :type,           null: false

      t.timestamps
    end
  end
end
