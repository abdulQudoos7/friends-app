class CommentsController < ApplicationController
  def create
    @friend = Friend.friendly.find(params[:friend_id])
    @comment = @friend.comments.create(comment_params)
    if @comment.save
      flash[:notice] = "comment has been created"
      redirect_to friend_path(@friend)
    else
      flash[:alert] = "comment has not been created"
      redirect_to friend_path(@friend)
    end
  end

  def destroy
    @friend = Friend.friendly.find(params[:friend_id])
    @comment = @friend.comments.find(params[:id])
    @comment.destroy
    # redirect_to friend_path(@friend), status: 303
    if User.admin
      redirect_to admin_comments_url
    else
      redirect_to friend_path(@friend)
    end
    # binding.pry
  end

  def show
    
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :commenter)
  end
end
