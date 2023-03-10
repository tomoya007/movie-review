class LikesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def create
    @comment = Comment.find(params[:comment_id])
    unless current_user.already_liked?(@comment)
      like = @comment.likes.build(user: current_user)
      like.save
      @comment.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || :back }
        format.js
      end
    end
  end

  def destroy
    # @comment = Comment.find(params[:id])
    @comment = Like.find(params[:id]).comment
    if current_user.already_liked?(@comment)
      Like.find_by(comment: @comment, user: current_user).destroy
      @comment.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || :back }
        format.js
      end
    end
  end
end
