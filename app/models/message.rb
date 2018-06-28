class Message < ApplicationRecord
	
 include PgSearch
  pg_search_scope :search_by_title, against: [:name],
  using: {
  	tsearch: {
  		prefix: true,
  		negation: true
  	}
  }

  

	validates :name,presence:true
	validates :email,presence:true

	validates :mobile_no, presence: true, numericality: true
	validates :mobile_no, length: {minimum:11} ,if: "mobile_no.present?"
	validates :mobile_no, length: {maximum:14} ,if: "mobile_no.present?"
	

	validates :message,presence:true
end
