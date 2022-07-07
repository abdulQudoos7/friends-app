class AddFriendIdToDegree < ActiveRecord::Migration[7.0]
  def change
    add_column :degrees, :friend_id, :integer
    add_index :degrees, :friend_id
  end
end
