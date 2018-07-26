class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.string :name,               null: false, default: ''
      t.string :city,               null: false, default: ''
      t.string :country      
      t.datetime :start_date,         null: false
      t.datetime :end_date,         null: false      
      t.integer :category,           null: false

      t.timestamps
    end
  end
end
