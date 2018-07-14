class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :product
      t.string :batch_no
      t.date :manufacture_date
      t.date :expiry_date
      t.string :quantity
      t.string  :remark
      t.string :slug, unique: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
