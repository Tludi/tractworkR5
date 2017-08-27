class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :code
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :contact_id
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
