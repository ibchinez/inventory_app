class Message < ApplicationRecord
	
validates :name,presence:true
validates :email,presence:true
validates :mobile_no,presence:true
validates :message,presence:true
end
