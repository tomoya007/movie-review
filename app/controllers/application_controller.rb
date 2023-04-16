class ApplicationController < ActionController::Base
  include Pagy::Backend #追記
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :name_search

  def name_search
    @q = Movie.ransack(params[:q])
    @results = @q.result
  end

  def add_movies_to_db movies
    movies.each do |m|
      unless Movie.exists?(m["id"])
        Movie.add(m["id"], m["title"], m["poster_path"], m["genre_ids"])
      end
    end
  end

  def add_movie_to_db movie
    unless Movie.exists?(movie["id"])
      ids_arr = Array.new
      ids_str = movie["genres_ids"]
      movie["genres"].each do |genre|
        ids_arr << genre["id"]
      end
      title = movie["original_language"]=="ja" ? movie["original_title"] : movie["title"]
      Movie.add(movie["id"], title, movie["poster_path"], ids_arr) unless ids_arr.nil?
      Movie.add(movie["id"], title, movie["poster_path"], ids_str) unless ids_str.nil?
    end
  end

  def logged_in_user
    unless user_signed_in?
      store_location
      flash[:danger] = "ログインしてください。"
      redirect_to user_session_path 
    end
  end

  private

  def require_user_signed_in 
    unless user_signed_in?
      redirect_to user_session_path 
    end
  end

  def counts(user)
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end

  def current_user?(user)
		user == current_user
	end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end
end

