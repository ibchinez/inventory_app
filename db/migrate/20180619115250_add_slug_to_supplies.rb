class AddSlugToSupplies < ActiveRecord::Migration[5.1]
  def change
  	add_column :supplies, :slug, :string, unique: true
  end
end

