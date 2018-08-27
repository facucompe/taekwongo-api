class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :title,               null: false, default: ''
      t.references :user,               null: false
      t.integer :training_type,           null: false

      t.timestamps
    end
  end
end
