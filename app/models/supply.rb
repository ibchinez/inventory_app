class Supply < ApplicationRecord

  include PgSearch
  pg_search_scope :search_by_title, against: [:customer_name],
  using: {
  	tsearch: {
  		prefix: true,
  		negation: true
  	}
  }

  #belongs_to :user
  resourcify

  extend FriendlyId
  friendly_id :customer_name, use: :slugged

  #self.per_page = 10
  #WillPaginate.per_page = 10
  validates :customer_name, presence:true
	validates :quantity, presence:true
	validates :description, presence:true
	validates :price_per_unit, presence:true
  validates :batch_no, presence:true
  validates :purchase_date, presence:true
  validates :expiry_date, presence:true
  validates :manufacture_date, presence:true
  validates :remark, presence:true
  validates :pack_size, presence:true
end
