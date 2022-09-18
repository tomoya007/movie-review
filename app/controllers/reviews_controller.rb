class ReviewsController < ApplicationController
  before_action :require_user_signed_in, only: [:create]
  def create
    @review = current_user.reviews.new(review_params) 
    if @review.save
      flash[:success] = 'レビューを投稿しました。'
      redirect_to movie_path(@review.movie_id)
    end
  end

  def new
    @review = Review.new
  end

  def destroy
    @review.destroy
    flash[:success] = 'レビューを削除しました。'
    redirect_back(fallback_location: root_path)
  end


  private
    def review_params
      params.require(:review).permit(:movie_id, :user_id, :text, :raty) 
    end
  end  