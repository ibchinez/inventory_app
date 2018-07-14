  class MessagesController < ApplicationController

  def create
   @message = Message.create(message_params) 	
   if @message.save
     respond_to do |format|
      format.js{}
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
