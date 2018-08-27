class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.float :magnitude,               null: false, default: 0.00
      t.references :training,               null: false

      t.timestamps
    end
  end
end
