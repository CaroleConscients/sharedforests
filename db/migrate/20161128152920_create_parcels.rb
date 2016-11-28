class CreateParcels < ActiveRecord::Migration[5.0]
  def change
    create_table :parcels do |t|
      t.integer :unique_number
      t.float :latitude
      t.float :longitude
      t.string :farmer_name
      t.integer :tree_quantity
      t.integer :tree_quantity_remaining
      t.string :tree_species

      t.timestamps
    end
  end
end
