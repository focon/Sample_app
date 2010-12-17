class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :encryted_password, :string
  end

  def self.down
    remove_column :users, :encryted_password
  end
end
