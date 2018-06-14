class CreateSupplies < ActiveRecord::Migration[5.1]
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :quantity
      t.string :weight
      t.string :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
