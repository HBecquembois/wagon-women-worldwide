class UsersController < ApplicationController

  def index
    @competences = ActsAsTaggableOn::Tag.for_context(:competences).map{ |tag| tag.name }
    if params[:choices].present?
      @users = User.search_by_competences_and_users(params[:choices])
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
