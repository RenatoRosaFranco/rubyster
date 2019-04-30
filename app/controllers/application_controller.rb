require "application_responder"

class ApplicationController < ActionController::Base
  # before_filter :configure_permitted_parameters, if: :devise_controller?

  self.responder = ApplicationResponder
  respond_to :html

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :email, :password, :password_confirmation)}
  end
end
