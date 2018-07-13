class Post < ApplicationRecord
  # extend FriendlyId
  # friendly_id :name, use: :slugged

  belongs_to :user
  resourcify

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :landing_title,presence:true
  validates :landing_text,presence:true
  validates :service_text_string, presence: true
  validates :scrub_title,presence:true
  validates :scrub_text,presence:true
  validates :cet_title,presence:true
  validates :cet_text,presence:true
  validates :tane_title,presence:true
  validates :tane_text,presence:true
  validates :testimony_text,presence:true
  validates :testimony_sender,presence:true
  validates :address1,presence:true
  validates :address2,presence:true
  validates :phone1,presence:true
  validates :phone2,presence:true
  validates :email,presence:true, format: { with: VALID_EMAIL_REGEX }


end
