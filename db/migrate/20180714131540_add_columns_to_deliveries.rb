class AddColumnsToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :inventory_no, :string
    add_column :deliveries, :product_name, :string
    add_column :deliveries, :manufacture_date, :date
    add_column :deliveries, :expiry_date, :date
    add_column :deliveries, :arrival_date, :date
    add_column :deliveries, :remark, :string
    add_column :deliveries, :batch_no, :string
    add_column :deliveries, :receipient, :string
    rename_column :deliveries, :weight, :description
    rename_column :deliveries, :name,  :supplier_name
  end
end
