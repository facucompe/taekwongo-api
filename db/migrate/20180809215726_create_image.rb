class CreateImage < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string:link
      t.belongs_to :poomse, index: true
    end
  end
end
