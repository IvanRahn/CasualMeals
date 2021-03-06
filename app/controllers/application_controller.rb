class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: proc { |c| params[:controller] != "home" }
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :address, :type_of_user])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number, :address, :type_of_user])
  end
end
