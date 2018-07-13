class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :landing_title
      t.string :landing_text
      t.string :service_text_string
      t.string :scrub_title
      t.string :scrub_text
      t.string :cet_title
      t.string :cet_text
      t.string :tane_title
      t.string :tane_text
      t.string :testimony_text
      t.string :testimony_sender
      t.string :address1
      t.string :address2
      t.string :phone1
      t.string :phone2
      t.string :email
    #  t.string :slug, unique: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
