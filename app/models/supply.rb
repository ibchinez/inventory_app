class Supply < ApplicationRecord
  belongs_to :user

  resourcify

  	validates :name, presence:true
	validates :quantity, presence:true
	validates :weight, presence:true
	validates :amount, presence:true
end
