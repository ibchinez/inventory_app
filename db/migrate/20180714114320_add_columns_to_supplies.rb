class AddColumnsToSupplies < ActiveRecord::Migration[5.1]
  def change
    add_column :supplies, :pack_size, :string
    add_column :supplies, :batch_no, :string
    add_column :supplies, :manufacture_date, :date
    add_column :supplies, :expiry_date, :date
    add_column :supplies, :purchase_date, :date
    add_column :supplies, :remark, :string
    rename_column :supplies, :weight, :description
    rename_column :supplies, :amount, :price_per_unit
    rename_column :supplies, :name,  :customer_name
  end
end
