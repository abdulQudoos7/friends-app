class Admin::UsersController < ApplicationController
  def index
    @user = User.all
  end

  def edit
    # binding.pry
    # @user = User(set_user)
    # # @user = User.find(params[:id])
    # binding.pry
  end

  # def update
  #     binding.pry
  #     # @user = User.find(params[:id])
  #     # @user = current_user.users.update(set_user)
  #     if @user.update(user_params)
  #         redirect_to @user, notice: "User was successfully updated."
  #     else
  #         redirect_to @user, alert, notice: "Friend was not updated."
  #     end
  #     binding.pry
  # end


  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_users, notice: "Friend was successfully updated." }
      else
      end
    end
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:role)
  end
end
