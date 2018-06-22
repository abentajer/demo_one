class ChangeColumnNameUserPassword < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :users, :password_digest, :password_digest
  end
end
