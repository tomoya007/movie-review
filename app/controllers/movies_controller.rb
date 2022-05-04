class MoviesController < ApplicationController
  before_action :set_q, only: [:index, :search, :conditional_search]
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def search
    if params[:q][:title_eq].blank?
      @results=[]
    else
      @results = @q.result
    end
    if @results.count==0
      @movies = Movie.all
      render :index
      
    end
    
  end

  # 条件検索
  def conditional_search
    @results = @q.result
  end

  private

  def set_q
    @q = Movie.ransack(params[:q])
  end

  def movie_params
    params.require(:movie).permit(:image)
  end
  
end


