class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
    calcmotion
    # @point = Message.sum{ |hash| hash[:point]}
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)

    if @message.save

      # binding.pry
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

  def calcmotion
    @point = Message.where(room_id: @room.id).sum(:motivation_id)
    if @point == 0
      @point = "普通です。"
    elsif @point >= 1
      @point = "ハッピーです。"
    else
      @point = "悲しいです。"
    end
    # if @message.motivation_id.is_a?(Integer)
    #   puts "数値"
    # else
    #   puts "数値じゃない"
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image, :motivation_id).merge(user_id: current_user.id)
  end



end
