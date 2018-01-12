class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.references :user, foreign_key: true
      t.integer :campus_id, null: false

      t.timestamps
    end
  end
end
