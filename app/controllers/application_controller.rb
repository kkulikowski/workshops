class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname
  end
end
