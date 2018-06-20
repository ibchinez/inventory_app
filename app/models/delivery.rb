class Delivery < ApplicationRecord
  	extend FriendlyId
  friendly_id :name, use: :slugged


  belongs_to :user
  resourcify

  	validates :name, presence:true
	validates :quantity, presence:true
	validates :weight, presence:true
end
