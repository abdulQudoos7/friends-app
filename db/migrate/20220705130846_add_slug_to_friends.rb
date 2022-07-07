class AddSlugToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :slug, :string
    add_index :friends, :slug, unique: true
  end
end
