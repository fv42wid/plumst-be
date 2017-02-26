class MessagesController < ApplicationController

  def create
    @message = Message.build(message_params)
    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private
  
    def message_params
      params.require(:message).permit(:email, :fname, :lname, :message)
    end
end
