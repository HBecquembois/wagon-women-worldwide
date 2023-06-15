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

  def mentors
    @favorited = current_user.all_favorited
    @users = User.where(mentor: true)
    @mentor = true
    @mentor_skills = ActsAsTaggableOn::Tag.for_context(:mentor_skills).map{ |tag| tag.name }
    @search_collection = Project::MISSIONS + @mentor_skills
    @users = @users.search_by_competences_and_users(params[:choices]) if params[:choices].present?
    @users = @users.tagged_with(params[:languages], :on => :languages, :any => true) if params[:languages].present?
    @users = @users.tagged_with(params[:competences], :on =>:competences, :any => true) if params[:competences].present?
    @users = @users.where(country: params[:countries]) if params[:countries].present?
    @mentors = @users.where(mentor: true)
  end

  def search
    @favorited = current_user.all_favorited
    @competences = ActsAsTaggableOn::Tag.for_context(:competences).map{ |tag| tag.name }
    @users = params[:page] == "mentors" ? User.where(mentor: true) : User.all
    @mentor = (params[:page] == "mentors")
    @users = @users.search_by_competences_and_users(params[:choices]) if params[:choices].present?
    @users = @users.tagged_with(params[:languages], :on => :languages, :any => true) if params[:languages].present?
    @users = @users.tagged_with(params[:competences], :on =>:competences, :any => true) if params[:competences].present?
    @users = @users.where(country: params[:countries]) if params[:countries].present?
    @mentors = @users.where(mentor: true)
    respond_to do |format|
      format.json
    end
  end

  def show
    @user = User.new
    @user = User.find(params[:id])
    @user_projects = Project.where(user_id: @user.id)
    @favorited = current_user.all_favorited
    @chatroom = current_user.chatroom_with(@user)
    if @chatroom.nil?
      user_a_id = current_user.id
      user_b_id = @user.id
      @chatroom = Chatroom.new(user_a_id: user_a_id, user_b_id: user_b_id)
      @chatroom.save
    end
  end

  def favorite
    @user = User.find(params[:id])
    @current_user = current_user
    @current_user.favorite(@user)
    redirect_to dashboard_path
  end

  def unfavorite
    @user = User.find(params[:id])
    @current_user = current_user
    @current_user.unfavorite(@user)
    redirect_to user_path(@user)
  end


  def mentor_search
    @favorited = current_user.all_favorited
    @users = User.where(mentor: true)
    @mentor_skills = ActsAsTaggableOn::Tag.for_context(:mentor_skills).map{ |tag| tag.name }
    @search_collection = Project::MISSIONS + @mentor_skills
    @users = @users.search_by_competences_and_users(params[:choices]) if params[:choices].present?
    @users = @users.tagged_with(params[:languages], :on => :languages, :any => true) if params[:languages].present?
    @users = @users.tagged_with(params[:competences], :on =>:competences, :any => true) if params[:competences].present?
    @users = @users.where(country: params[:countries]) if params[:countries].present?
    @mentors = @users.where(mentor: true)
    respond_to do |format|
      format.json
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
