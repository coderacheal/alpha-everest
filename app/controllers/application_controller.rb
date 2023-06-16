class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |user| user.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:name, :email, :password, :current_password)
    end
  end

  # def after_sign_out_path_for(resource_or_scope)
  #   splash_screen_path
  # end

  # def after_sign_in_path_for(resource)
  #   categories_path
  # end

  # def after_sign_in_path_for(resource)
  #   user_categories_path(current_user)
  # end
end
