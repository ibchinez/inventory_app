class Delivery < ApplicationRecord
  
   include PgSearch
  pg_search_scope :search_by_title, against: [:name],
  using: {
  	tsearch: {
  		prefix: true,
  		negation: true
  	}
  }


  extend FriendlyId
  friendly_id :name, use: :slugged


  belongs_to :user
  resourcify

  	validates :name, presence:true
	validates :quantity, presence:true
	validates :weight, presence:true
end
