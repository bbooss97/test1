class AddUserIdToVisites < ActiveRecord::Migration[6.1]
  def change
    add_column :visites, :user_id, :integer
    add_index :visites, :user_id
  end
end
