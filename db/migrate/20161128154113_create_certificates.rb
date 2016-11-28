class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.integer :unique_number
      t.references :parcel, foreign_key: true
      t.string :name
      t.text :message
      t.datetime :date
      t.integer :trees_quantity

      t.timestamps
    end
  end
end
