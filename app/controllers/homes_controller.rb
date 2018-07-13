class HomesController < ApplicationController
	#layout "homes"
  def index
    @post = Post.find(1)
  end

  def create
   @message = Message.create(message_params) 	
   @message.save
   respond_to do |format|
    format.js{}
  end
else 
  respond_to do |format|
    format.js{}
  end
end

private
  def message_params
    params.require(:message).permit(:name, :email, :mobile_no, :message)
  end
end
