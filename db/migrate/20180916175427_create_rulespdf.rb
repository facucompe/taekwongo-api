class CreateRulespdf < ActiveRecord::Migration[5.2]
  def change
    create_table :rulespdfs do |t|
      t.string :version,               null: false
      t.string :pdf_url,               null: false
      
      t.timestamps
    end
  end
end
