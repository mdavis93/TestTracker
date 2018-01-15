class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
      t.integer :exam_num, default: 1, null: false
      t.boolean :retake, default: false, null: false
      t.boolean :makeup, default: false, null: false
      t.integer :mod_by, null: false
      t.integer :exam_type, default: 0, null: false
      t.integer :result, null: false

      t.timestamps
    end
  end
end
