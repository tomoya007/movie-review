class UsersController < ApplicationController
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


  private
  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end