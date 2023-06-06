class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @users = User.all


    if params[:query].present?
      @projects = Project.search_by_competences_and_users(params[:query])
    else
      @projects = Project.all
    end
  end
end
