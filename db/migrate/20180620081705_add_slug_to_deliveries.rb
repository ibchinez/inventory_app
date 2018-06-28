class AddSlugToDeliveries < ActiveRecord::Migration[5.1]
  def change
  	add_column :deliveries ,:slug, :string, unique: true
  end
end
