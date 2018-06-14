class User < ApplicationRecord
  resourcify
  rolify
  has_many :deliveries
  has_many :supplies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
