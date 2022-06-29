class CommentsController < ApplicationController

    def create
    @friend = Friend.find(params[:friend_id])
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
    @friend = Friend.find(params[:friend_id])
    @comment = @friend.comments.find(params[:id])
    @comment.destroy
    redirect_to friend_path(@friend), status: 303
    end



    private
    def comment_params
    params.require(:comment).permit(:body, :commenter)
    end


end
