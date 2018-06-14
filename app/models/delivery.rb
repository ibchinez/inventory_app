class Delivery < ApplicationRecord
  belongs_to :user
  resourcify

  	validates :name, presence:true
	validates :quantity, presence:true
	validates :weight, presence:true
end
