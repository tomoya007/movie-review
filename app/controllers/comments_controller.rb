class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    # comment = Comment.new(comment_params)
    @comment = Comment.new(comment_params)
    # @comment.user_id = current_user.id
    # puts @comment.user_id
    # @comment.movie_id = params[:id]
    if @comment.save
      flash[:success] = "コメント発表成功！"
    else
      flash[:danger] = "コメント発表失敗"
    end
    redirect_back fallback_location: root_path
  end

  def destroy
    @comment.destroy
    flash[:success] = "コメント削除しました"
    redirect_to request.referrer
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :movie_id, :user_id)
    end

    def correct_user
      @comment = current_user.comments.find_by(id: params[:id])
      redirect_back fallback_location: root_path if @comment.nil?
    end
end
