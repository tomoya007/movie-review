class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  # before_action :require_user_signed_in, only: [:create, :destroy]

  def create
    @comment = current_user.comments.new(comment_params) 
    if @comment.save
      flash[:success] = 'レビューを投稿しました。'
      redirect_to movie_path(@comment.movie_id)
    end
  end

  # def destroy
  #   @comment.destroy
  #   flash[:success] = "コメント削除しました"
  #   redirect_to request.referrer
  # end

  def destroy
    @comment.destroy
    flash[:success] = 'レビューを削除しました。'
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
