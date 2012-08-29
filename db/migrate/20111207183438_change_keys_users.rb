class ChangeKeysUsers < ActiveRecord::Migration
  def up
    rename_column :users, :password, :password_hash
    add_column :users, :password_salt, :string
  end

  def down
    rename_column :users, :password_hash, :password
    remove_column :users, :password_salt
  end
end
