class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to admin_users_path, notice: "User was successfully updated."
      else
        redirect_to admin_users_path, notice: "User was not updated."
      end
    
  end



  private

  def user_params
    params.require(:user).permit(:role)
  end


end
