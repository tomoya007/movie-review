class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :set_comment, only: :destroy
  before_action :correct_user, only: :destroy

  def create
    @comment = current_user.comments.build(comment_params) 
    if @comment.save
      flash[:success] = 'コメントを投稿しました。'
    else
      flash[:danger] = 'コメントの投稿に失敗しました'
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @comment.destroy
    flash[:success] = 'コメントを削除しました。'
    redirect_back(fallback_location: root_path)
  end

  private
  
  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def correct_user
    unless @comment&.user == current_user
      redirect_back fallback_location: root_path 
    end
  end

  def comment_params
    params.require(:comment).permit(:movie_id, :content, :raty) 
  end
end
