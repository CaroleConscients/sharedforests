class AddOccasionToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :occasion, :string
  end
end
