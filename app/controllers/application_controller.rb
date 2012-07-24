class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?, :current_user

  def facebook_auth
    @oauth = Koala::Facebook::OAuth.new(FACEBOOK_APP_ID, FACEBOOK_SECRET_KEY)    
    if fb_user_info = @oauth.get_user_info_from_cookie(request.cookies)
      @graph = Koala::Facebook::GraphAPI.new(fb_user_info['access_token'])
      @user = User.find_or_create_by_facebook_user_id({ facebook_user_id: fb_user_info['user_id'] })
    end    
  end

  def logged_in?
    !!@user
  end

  def current_user
    @user ||= User.find(session[:user_id]) unless session[:user_id].blank? 
  end

  def current_graph
    @graph
  end

  def require_login
    if current_user.blank?
      redirect_to facebook_login_path
    end
  end

  def can_modify?(object)
    (redirect_to root_path, notice: 'You do not have permission.') unless object.user_id == current_user.id
  end
end
