class CreateWorkSegments < ActiveRecord::Migration[5.1]
  def change
    create_table :work_segments do |t|
      t.boolean :status
      t.integer :workday_id
      t.string :task
      t.integer :project_id
      t.integer :timeEntry
      t.string :segmentNotes

      t.timestamps
    end
  end
end
