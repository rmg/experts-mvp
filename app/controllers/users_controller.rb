class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.status = params[:user][:status]
    if @user.save
      flash[:notice] = "Status updated"
    else
      flash[:error] = "Something went"
    end
    redirect_to root_path
  end

end
