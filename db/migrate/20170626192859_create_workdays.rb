class CreateWorkdays < ActiveRecord::Migration[5.1]
  def change
    create_table :workdays do |t|
      t.decimal :hoursWorked
      t.date :dayDate
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
