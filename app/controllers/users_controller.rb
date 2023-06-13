class UsersController < ApplicationController
  def index
    @favorited = current_user.all_favorited
    @competences = ActsAsTaggableOn::Tag.for_context(:competences).map{ |tag| tag.name }

    @users = User.all
    @users = @users.search_by_competences_and_users(params[:choices]) if params[:choices].present?
    @users = @users.tagged_with(params[:languages], :on => :languages, :any => true) if params[:languages].present?
    @users = @users.tagged_with(params[:competences], :on =>:competences, :any => true) if params[:competences].present?
    @users = @users.where(country: params[:countries]) if params[:countries].present?
    @mentors = @users.where(mentor: true)
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
    if params[:choices].present?
      @users = @users.search_by_competences_and_users(params[:choices])
    end
  end
  private
  def user_params
    params.require(:user).permit(:photo)
  end
end
