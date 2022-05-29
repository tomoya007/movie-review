class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後、プロフィール画面に移動する
  def after_sign_in_path_for(resource) 
    user_path(id: current_user.id)
  end

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,])
    # アカウント編集の時にnameとavatarのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end
end
