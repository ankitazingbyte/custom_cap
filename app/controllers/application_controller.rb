class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :null_session
   before_action :configure_permitted_parameters, if: :devise_controller?
   helper :all
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :email,:password, :password_confirmation, :admin, :order_id])
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
     	products_path
    else
     	root_path
    end
  end

  helper_method :current_order
  # helper_method :current_user

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end



end
  