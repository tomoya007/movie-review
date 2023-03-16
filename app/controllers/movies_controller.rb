class MoviesController < ApplicationController
  include MoviesHelper

  before_action :set_q, only: [:index, :search, :conditional_search]

  def index
    @pagy, @movies = pagy(Movie.all)
  end

  def show
    @movie = Movie.find(params[:id])
    @comment = Comment.new
    @comments = @movie.comments
    @user = User.find_by(id: @comment.user_id) 

    
    # get current user's comment
    @current_user_comment = Comment.find_by(user_id: current_user.id, movie_id: @movie["id"]) if user_signed_in?
    # create new comment
    @comment = Comment.new if user_signed_in? && watched_check(@movie["id"])
    if Movie.exists?(@movie["id"])
      # find movie object from database
      @movie_db = Movie.find(@movie["id"])
    end
  end

  def search  #→application_controller.rbに移動
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

  def conditional_search   
    @genres = Genre.all
    @genre = Genre.find_by(params[:genre_id])
    @movie = Movie.find_by(params[:movie_id])
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



