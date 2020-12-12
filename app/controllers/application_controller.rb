class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception # added bn nl
  before_action :authenticate_user! # added by nl
# this line es importante para que me permita guardar usuario.
  helper_method :current_user_session, :current_user

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :password, :email ])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password ])
#    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
#    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password)}
  end

end
