class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @users = User.all
    if params[:query].present?
      @projects = User.search_by_competences_and_users(params[:query])
    end
  end

end
