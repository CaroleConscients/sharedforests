class RenameUsersFromCertificates < ActiveRecord::Migration[5.0]
  def change
    rename_column :certificates, :users, :giver
  end
end
