class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :name, null: false
      t.date :first_day, null: false
      t.date :last_day, null: false
      t.date :deadline, null: false

      t.timestamps
    end
    add_index :sessions, :name
  end
end
