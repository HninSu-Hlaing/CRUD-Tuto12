class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @users = User.find(params[:id])
  end
  def edit
    @users = User.find(params[:id])
  end
  def update
    @users = User.find(params[:id])
    @users.update(user_params)
    redirect_to root_path
  end
  def destroy
    @users = User.find_by(params[:id])
    @users.destroy
    redirect_to root_path
  end
  def create
    users = User.new(users_params)
    users.save
    redirect_to root_path
  end
  private
  def users_params
    params.require(:users).permit(:name,:email,:phone,:password)
  end
  def user_params
    params.require(:user).permit(:name,:email,:phone,:password)
  end
end
