class AddUsersToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :users, :string
  end
end
