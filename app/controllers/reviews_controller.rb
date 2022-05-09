class ReviewsController < ApplicationController
  def new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to movie_path(@review.movie_id)
  end

  private
    def review_params
      params.require(:review).permit(:movie_id, :text)
    end
end
