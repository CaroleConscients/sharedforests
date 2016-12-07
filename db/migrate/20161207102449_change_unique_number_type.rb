class ChangeUniqueNumberType < ActiveRecord::Migration[5.0]
  def up
    change_column :parcels, :unique_number, :string
    change_column :certificates, :unique_number, :string
  end

  def down
    change_column :parcels, :unique_number, :integer
    change_column :certificates, :unique_number, :integer
  end
end
