class UsersController < ApplicationController

  def index
    @favorited = current_user.all_favorited
    @competences = ActsAsTaggableOn::Tag.for_context(:competences).map{ |tag| tag.name }
    if params[:choices].present?
      @mentors = User.where(mentor: true)
      @users = User.search_by_competences_and_users(params[:choices])
    else
      @users = User.all
      @mentors = User.where(mentor: true)
    end
  end

  def show
    @user = User.new
    @user = User.find(params[:id])
    @user_projects = Project.where(user_id: @user.id)
    @favorited = current_user.all_favorited
  end

  def favorite
    @user = User.find(params[:id])
    @current_user = current_user
    @current_user.favorite(@user)
    redirect_to user_path(@user)
  end

  def unfavorite
    @user = User.find(params[:id])
    @current_user = current_user
    @current_user.unfavorite(@user)
    redirect_to user_path(@user)
  end

  def mentors
    @favorited = current_user.all_favorited
    @users = User.where(mentor: true)
    @competences = ActsAsTaggableOn::Tag.for_context(:competences).map{ |tag| tag.name }
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
