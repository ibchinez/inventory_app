class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :quantity
      t.string :weight
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
