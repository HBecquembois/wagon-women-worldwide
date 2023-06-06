class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.new
    @user = User.find(params[:id])
  end
end
