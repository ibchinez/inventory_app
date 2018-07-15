class RemoveUserIdFromModels < ActiveRecord::Migration[5.1]
  def change
    remove_column :supplies, :user_id, :references
    remove_column :deliveries, :user_id, :references
    remove_column :posts, :user_id, :references
   # remove_column :stocks, :user_id, :references
  end
end
