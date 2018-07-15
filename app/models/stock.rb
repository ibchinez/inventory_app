class Stock < ApplicationRecord
  include PgSearch
 pg_search_scope :search_by_title, against: [:product],
 using: {
   tsearch: {
    prefix: true,
    negation: true
  }
}


extend FriendlyId
friendly_id :product, use: :slugged


#belongs_to :user
resourcify

  validates :quantity, presence:true, numericality:true
  validates :product, presence:true
  validates :batch_no, presence:true
  validates :expiry_date, presence:true
  validates :manufacture_date, presence:true
  validates :remark, presence:true

end
