class AdminController < ApplicationController
  def index
    @friends = Friend.all
    @comments = Comment.all
    @users = User.all

  end

  def friends
    @friends = Friend.all
  end

  def comments
    @comments = Comment.all
    
  end

  def users
    @users = User.all
  end

end
