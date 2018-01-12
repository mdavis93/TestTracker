class CreateCohorts < ActiveRecord::Migration[5.1]
  def change
    create_table :cohorts do |t|
      t.string :cohort_id, null: false

      t.timestamps
    end
    add_index :cohorts, :cohort_id
  end
end
