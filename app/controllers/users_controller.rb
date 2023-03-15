class UsersController < ApplicationController
  before_action :require_user_signed_in, only: [:show, :followings, :followers]

  def index
    @pagy, @users = pagy(User.order(id: :desc), items: 25)
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments

    unless current_user?(@user)
      user = current_user
      user_list_watched = Movielist.find_by(user: @user, listname: "watched")
      user_list_want = Movielist.find_by(user: @user, listname: "want")
      current_list_watched = Movielist.find_by(user: user, listname: "watched")
      current_list_want = Movielist.find_by(user: user, listname: "want")
      user_watched = ListMovie.where(movielist: user_list_watched)
      user_want = ListMovie.where(movielist: user_list_want)
      current_watched = ListMovie.where(movielist: current_list_watched)
      current_want = ListMovie.where(movielist: current_list_want)
      @movies = Array.new
      unless user_watched.nil? or current_watched.nil?
        user_watched.each do |movie|
          if current_watched.exists?(movie_id: movie.movie_id)
            @movies << Movie.find(movie.movie_id)
          end
        end
      end
      unless user_want.nil? or current_want.nil?
        user_want.each do |movie|
          if current_want.exists?(movie_id: movie.movie_id)
            @movie << Movie.find(movie.movie_id)
          end
        end
      end
      @num = @movies.count>5 ? 5 : @movies.count unless @movies.nil?
    end 
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def followings
    # @user = User.find(params[:id])
    # @pagy, @followings = pagy(@user.followings)
    # counts(@user)
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    # @user = User.find(params[:id])
    # @pagy, @followers = pagy(@user.followers)
    # counts(@user)
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  def watched
    list = listup("watched")
    paginate_list(list)
  end

  def want
    list = listup("want")
    paginate_list(list)
  end

  def my_watched
    @list = listup("recommend")
    @count = @list.count
    @my_watched = User.my_watched(@movielist.id, params[:my_id])
    @my_watched = Kaminari.paginate_array(@my_watched).page(params[:page]).per(20) unless @my_watched.blank?
  end

  def my_unwatched
    @list = listup("recommend")
    @count = @list.count
    @my_unwatched = User.my_unwatched(@movielist.id, params[:my_id])
    @my_unwatched = Kaminari.paginate_array(@my_unwatched).page(params[:page]).per(20) unless @my_unwatched.blank?
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end

  def listup listname
    @user = User.find(params[:id])
    @movielist = @user.movielists.find_by(listname: "#{listname}")
    unless @movielist.nil?
      ListMovie.where(movielist_id: @movielist.id)
    end
  end

  def paginate_list list
    @count = list.count
    unless list.blank?
      @list = Array.new
      list.each do |movie|
        @list << movie
      end
      @list = Kaminari.paginate_array(@list).page(params[:page]).per(20)
    end
  end
end