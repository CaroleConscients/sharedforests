class AddEmailToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :email, :string
  end
end
