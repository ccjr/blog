class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def self.up
    rename_column :users, :password, :hashed_password
  end

  def self.down
    rename_column :users, :hashed_password, :password
  end
end
