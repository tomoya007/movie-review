class MoviesController < ApplicationController
  def index
    @pagy, @movies = pagy(Movie.all)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
