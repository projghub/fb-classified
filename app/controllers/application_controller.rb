class ApplicationController < ActionController::Base
  protect_from_forgery

  def facebook_auth
    @oauth = Koala::Facebook::OAuth.new(FACEBOOK_APP_ID, FACEBOOK_SECRET_KEY)
    if fb_user_info = @oauth.get_user_info_from_cookie(request.cookies)
      @graph = Koala::Facebook::GraphAPI.new(fb_user_info['access_token'])
      @user = User.new(@graph, fb_user_info['user_id'])
    end
  end

  def logged_in?
    !!@user
  end

  def current_user
    @user
  end

  def require_login
    unless logged_in?
      redirect_to :action => :login
    end
  end
end
