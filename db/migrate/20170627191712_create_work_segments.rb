class CreateWorkSegments < ActiveRecord::Migration[5.1]
  def change
    create_table :work_segments do |t|
      t.decimal :totalTime
      t.decimal :estimatedTime
      t.boolean :status
      t.integer :workday_id
      t.string :task

      t.timestamps
    end
  end
end
