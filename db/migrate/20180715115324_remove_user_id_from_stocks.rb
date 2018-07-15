class RemoveUserIdFromStocks < ActiveRecord::Migration[5.1]
  def change
    remove_column :stocks, :user_id, :references
  end
end
