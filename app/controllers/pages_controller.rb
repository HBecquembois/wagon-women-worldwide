class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
  end
end

def index
  @projects = Project.all
  @users = User.all
  if params[:query].present?
    @projects = Project.search_by_competences_and_users(params[:query])
  else
    @projects = Project.all
  end
end
