class Supply < ApplicationRecord

  include PgSearch
  pg_search_scope :search_by_title, against: [:name],
  using: {
  	tsearch: {
  		prefix: true,
  		negation: true
  	}
  }

  belongs_to :user
  resourcify

  extend FriendlyId
  friendly_id :name, use: :slugged

  #self.per_page = 10
  #WillPaginate.per_page = 10
  	validates :name, presence:true
	validates :quantity, presence:true
	validates :weight, presence:true
	validates :amount, presence:true
end
