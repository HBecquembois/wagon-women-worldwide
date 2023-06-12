class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @favorited = current_user.all_favorited
    @user = current_user
    @user_mentors =  @user.all_favorited
    @user_projects = Project.where(user_id: @user.id)
    @user_chats = Chatroom.where(user_a_id: @user.id) || Chatroom.where(user_b_id: @user.id)
  end
end

# def index
#   @projects = Project.all
#   @users = User.all
#   if params[:query].present?
#     @projects = Project.search_by_competences_and_users(params[:query])
#   else
#     @projects = Project.all
#   end
# end
