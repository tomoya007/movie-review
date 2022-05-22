class MoviesController < ApplicationController
  before_action :set_q, only: [:index, :search, :conditional_search]
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews
  end

  def search
    if params[:q][:title_eq].blank?&&params[:q].blank?
      flash.now[:danger] = '検索結果は0件でした。'
      @results=[]
    elsif params[:q][:released_year_lteq].present?
      @results = @q.result
    elsif params[:q][:released_year].present?
      @results = released_year_split.result
    elsif params[:q][:released_year_gteq].present?
      @results = @q.result
    else
      @results = @q.result
    end
    if @results.count==0
      flash.now[:danger] = '検索結果は0件でした。'
      @movies = Movie.all
      render :index
    end
  end


  private

  def set_q
    @q = Movie.ransack(params[:q])
  end

  def movie_params
    params.require(:movie).permit(:image)
  end

  def released_year_split
    Movie.ransack({
      released_year_gteq:params[:q][:released_year].split('~')[0],released_year_lteq:params[:q][:released_year].split('~')[1]
    })
  end
  
end


