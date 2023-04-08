class ToppagesController < ApplicationController
  def index
    @pagy, @movies = pagy(Movie.all)
  end

  def about
  end
end
