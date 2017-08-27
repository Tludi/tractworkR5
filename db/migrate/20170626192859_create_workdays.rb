class CreateWorkdays < ActiveRecord::Migration[5.1]
  def change
    create_table :workdays do |t|
      t.decimal :totalHoursWorked
      t.date :dayDate
      t.integer :user_id
      t.text :workDayNotes

      t.timestamps
    end
  end
end
