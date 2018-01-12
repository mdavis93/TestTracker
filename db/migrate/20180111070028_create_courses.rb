class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_id, null: false
      t.references :instructor, foreign_key: true
      t.references :session, foreign_key: true
      t.integer :shift, default: 0, null: false

      t.timestamps
    end
    add_index :courses, :course_id
  end
end
