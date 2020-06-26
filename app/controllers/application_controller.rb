class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #  before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  # end
  def favorite_text
    return @favorite_exists ? "fas fa-bookmark" : "far fa-bookmark"
  end

  def recommendation_text
    return @recommendation_exists ? "fas fa-thumbs-up" : "far fa-thumbs-up"
  end

  helper_method :favorite_text
  helper_method :recommendation_text
end

