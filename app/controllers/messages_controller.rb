class MessagesController < ApplicationController

  def index
    @messages = Message.last(3)
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private
  
    def message_params
      params.require(:message).permit(:email, :fname, :lname, :body)
    end
end
