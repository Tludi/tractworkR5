class CreateCsiDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :csi_divisions do |t|
      t.string :divnum
      t.string :divtitle
      t.string :groupname
      t.string :subgroupname

      t.timestamps
    end
  end
end
