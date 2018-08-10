class CreatePoomse < ActiveRecord::Migration[5.2]
  def change
    create_table :poomses do |t|
      t.string :title,               null: false, default: ''
    end
  end
end
