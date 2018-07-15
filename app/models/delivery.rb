class Delivery < ApplicationRecord

 include PgSearch
 pg_search_scope :search_by_title, against: [:product_name],
 using: {
   tsearch: {
    prefix: true,
    negation: true
  }
}


extend FriendlyId
friendly_id :product_name, use: :slugged


#belongs_to :user
resourcify

validates :supplier_name, presence:true
validates :quantity, presence:true
validates :description, presence:true
validates :inventory_no, presence:true
validates :receipient, presence:true
validates :product_name, presence:true
validates :batch_no, presence:true
validates :arrival_date, presence:true
validates :manufacture_date, presence:true
validates :expiry_date, presence:true
validates :remark, presence:true

end

