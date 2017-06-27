class CreateTimePunches < ActiveRecord::Migration[5.1]
  def change
    create_table :time_punches do |t|
      t.datetime :punch
      t.integer :work_segment_id
      t.boolean :status

      t.timestamps
    end
  end
end
