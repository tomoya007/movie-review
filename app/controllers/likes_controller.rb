class LikesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :comment_params
  def create
    Like.create(user_id: current_user.id, comment_id: params[:id])
  end
  
  def destroy
    Like.find_by(user_id: current_user.id, comment_id: params[:id]).destroy
  end
  
  private
  
  def comment_params
    @comment = Comment.find(params[:id])
  end
end
