class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.decimal :magnitude,               null: false, default: 0.00
      t.string :training_id,               null: false, default: ''

      t.timestamps
    end
  end
end
