class AddUserIdToFriendsDb < ActiveRecord::Migration[6.1]
  def change
    add_column :friends_dbs, :user_id, :integer
    add_index :friends_dbs, :user_id
  end
end
