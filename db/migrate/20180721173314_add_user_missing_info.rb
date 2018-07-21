class AddUserMissingInfo < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :postal_code
    remove_column :users, :province
    remove_column :users, :address
    rename_column :users, :name, :first_name
    add_column :users, :last_name, :string, null: false, default: ''
    add_column :users, :gender, :integer, null: false, default: 0
    add_column :users, :birth_date, :date
  end
end
