class MessagesController < ApplicationController

  def create
    @message = Message.build(message_params)
    if @message.save

    end
  end

  private
  
    def message_params
      params.require(:message).permit(:email, :fname, :lname, :message)
    end
end
