class UsersController < ApplicationController
  before_action :set_user,only: %i[edit update] #追記

  def index
    @pagy, @users = pagy(User.order(id: :desc), items: 25)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @user.update(user_params) 
      flash[:success] = 'ユーザー情報を更新しました。'
      redirect_to user_path
    else
      flash.now[:danger] = "ユーザーを情報を更新できませんでした"
      render :edit
    end
  end

  def destroy
  end

  private
    def set_user #追記
        @user = User.find(current_user.id)
    end

    def user_params 
        params.require(:user).permit(:name, :email, :image, :avatar )
    end
  end
