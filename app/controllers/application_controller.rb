class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/', :alert => exception.message
  end
  
  def can_modify?(object)
    (redirect_to root_path, notice: 'You do not have permission.') unless object.user_id == current_user.id
  end
end
