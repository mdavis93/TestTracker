class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :role, :integer
    add_index :users, :role
  end
end
