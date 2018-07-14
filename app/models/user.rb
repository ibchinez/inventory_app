class User < ApplicationRecord
  resourcify
  rolify
  has_many :deliveries
  has_many :supplies
  has_many :posts
  has_many :stocks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
