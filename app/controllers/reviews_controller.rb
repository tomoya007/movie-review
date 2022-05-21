class ReviewsController < ApplicationController
  before_action :require_user_logged_in, only: [:create]
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to movie_path(@review.movie_id)
  end

  def new
    @review = Review.new
  end

  private
    def review_params
      params.require(:review).permit(:movie_id, :text)
    end
end
