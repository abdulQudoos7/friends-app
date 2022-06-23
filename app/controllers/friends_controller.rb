class FriendsController < ApplicationController
  before_action :set_friend, only: %i[ show edit update destroy ]

 
  def index
    @friends = current_user.friends.all
    # @friends = Friend.all
  end

  def show
  end

  def new
    @friend = Friend.new
  end

  def edit
  end

  def create

    @friend = current_user.friends.new(friend_params)

    respond_to do |format|
      if @friend.save
        format.html { redirect_to friend_url(@friend), notice: "Friend was successfully created." }
        format.json { render :show, status: :created, location: @friend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @friend.update(friend_params)
        format.html { redirect_to friend_url(@friend), notice: "Friend was successfully updated." }
        format.json { render :show, status: :ok, location: @friend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @friend.destroy

    respond_to do |format|
      format.html { redirect_to friends_url, notice: "Friend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :email, :phone, :address, :user_id)
    end
end
