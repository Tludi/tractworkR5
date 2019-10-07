class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :divisionnum
      t.string :divisionname
      t.string :vendorname
      t.string :vendorcode
      t.string :itemcode
      t.string :itemdescription
      t.string :defmeasure
      t.string :itemunits
      t.decimal :unitcost
      t.string :orderunits
      t.decimal :matconversionrate
      t.date :pricedate
      t.decimal :priceage
      t.decimal :itemmarkup
      t.decimal :itemwaste
      t.decimal :productionrate
      t.string :laborclasscode
      t.decimal :laborclassrate
      t.decimal :laborandmaterialunitprice

      t.timestamps
    end
  end
end
