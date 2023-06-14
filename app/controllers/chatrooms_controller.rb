class ChatroomsController < ApplicationController
  def show
    @favorited = current_user.all_favorited
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

  end

  def create
    @user = User.find(params[:user_id])
    user_a_id = current_user.id
    user_b_id = @user.id
    @chatroom = Chatroom.new(user_a_id: user_a_id, user_b_id: user_b_id)
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end
end
