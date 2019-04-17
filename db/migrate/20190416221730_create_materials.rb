class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :divnum
      t.string :divname
      t.string :description
      t.string :defmeasure
      t.decimal :cost

      t.timestamps
    end
  end
end
