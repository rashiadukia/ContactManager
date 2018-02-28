class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :email, :password])
  end

  def only_see_own_page
    if current_user.id != params[:id]
      redirect_to root_path, notice: "Sorry, but you are only allowed to view your own profile page."
  end
end
end
