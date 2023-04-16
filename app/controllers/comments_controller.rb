class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @comment = current_user.comments.new(comment_params) 
    @movie = Movie.find_by(params[:id])
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
    def correct_user
      @comment = current_user.comments.find_by(id: params[:id])
      redirect_back fallback_location: root_path if @comment.nil?
    end
    
    def comment_params
      params.require(:comment).permit(:movie_id, :user_id, :content, :raty) 
    end
end
