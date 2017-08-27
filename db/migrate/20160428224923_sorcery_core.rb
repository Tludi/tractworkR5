class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :role
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.integer :pin
      t.integer :account_id

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
