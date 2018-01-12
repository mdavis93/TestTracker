class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :cohort, foreign_key: true
      t.string :name, null: false
      t.integer :status, default: 1, null: false

      t.timestamps
    end
    add_index :students, :name
  end
end
