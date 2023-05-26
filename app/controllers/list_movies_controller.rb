class ListMoviesController < ApplicationController
  protect_from_forgery #APIでエラーになった時
  before_action :logged_in_user, only: [:create, :create_watched, :create_want, :destroy]
  before_action :correct_user, only: :destroy
  
  def create
  end

  def create_watched
    @user = current_user
    @list = @user.movielists.find_by(listname: "watched")
    movie = Movie.find(params[:movie_id])
    add_movie_to_db movie
    @add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
    if @add_movie.save
      movie = Movie.find(params[:movie_id])
      movie.watched_num += 1
      movie.save
      flash[:success] = "観た映画リストに追加しました"
    else
      flash[:danger] = "観た映画リストへの追加失敗しました"
    end
    redirect_back fallback_location: root_path
  end

  # add watched movie from want-to-watch list
  def create_watched_from_want
    @user = current_user
    @list = @user.movielists.find_by(listname: "watched")
    @add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
    if @add_movie.save
      # record all users' watched number
      movie = Movie.find(params[:movie_id])
      movie.watched_num += 1
      movie.save
      ListMovie.find_by(movielist_id: @user.movielists.find_by(listname: "want").id, movie_id: params[:movie_id]).destroy
      flash[:success] = "観た映画リストに追加しました"
    else
      flash[:danger] = "観た映画リストへの追加失敗しました"
    end
    redirect_back fallback_location: root_path
  end

  # add want-to-watch movie without redirect
  def create_want
    @user = current_user
    @list = @user.movielists.find_by(listname: "want")
    movie = Movie.find(params[:movie_id])
    add_movie_to_db movie
    @add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
    if @add_movie.save
      flash[:success] = "リストに追加しました"
    else
      flash[:danger] = "リストへの追加失敗しました"
    end
    redirect_back fallback_location: root_path
  end

  def destroy
    @list_movie.destroy
    flash[:success] = "削除しました"
    if Movielist.find(@list_movie.movielist_id).listname == "watched"
      movie = Movie.find(@list_movie.movie_id)
      movie.watched_num -= 1
    end
    if Movielist.find(@list_movie.movielist_id).listname == "recommend"
      movie = Movie.find(@list_movie.movie_id)
      movie.rec_num -= 1
    end
    redirect_back fallback_location: root_path
  end


  private

  def logged_in_user
    unless user_signed_in?
      flash[:danger] = "ログインしてください。"
      redirect_to user_session_path
    end
  end

  # confirm the correct user
  def correct_user
    list = current_user.movielists.find_by(id: params[:movielist_id])
    @list_movie = ListMovie.find_by(movielist_id: params[:movielist_id], movie_id: params[:movie_id])
    redirect_to(root_path) if list.nil?
  end
end
