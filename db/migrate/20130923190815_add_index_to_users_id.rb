class AddIndexToUsersId < ActiveRecord::Migration
  def change
    add_index :users, :email
    add_index :users, :id
    add_index :users, :username
    add_index :users, :first_name
    add_index :users, :last_name
  end
end
