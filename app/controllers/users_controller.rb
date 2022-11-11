class UsersController < ApplicationController
  before_action :require_user_signed_in, only: [:followings, :followers]

  def index
    @pagy, @users = pagy(User.order(id: :desc), items: 25)
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def followings
    @user = User.find(params[:id])
    @pagy, @followings = pagy(@user.followings)
    counts(@user)
    @reviews = @user.reviews
  end

  def followers
    @user = User.find(params[:id])
    @pagy, @followers = pagy(@user.followers)
    counts(@user)
    @reviews = @user.reviews
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end