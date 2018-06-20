class MessagesController < ApplicationController

 def create
	@message = Message.create(message_params) 	
	@message.save
	redirect_to root_url
 end

 private
	def message_params
	   params.require(:message).permit(:name, :email, :mobile_no, :message)
	end
end
