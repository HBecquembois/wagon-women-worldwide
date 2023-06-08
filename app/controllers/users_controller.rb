class UsersController < ApplicationController


  def index
    if params[:query].present?
      @users = User.search_by_competences_and_users(params[:query])
    else
      @users = User.all
    end
  end

  def show
    @user = User.new
    @user = User.find(params[:id])
    @user_projects = Project.where(user_id: @user.id)
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
