class FacebookController < ApplicationController

  before_filter :facebook_auth
  before_filter :require_login, :except => :login

  helper_method :logged_in?, :current_user
  
  def index
    @likes_by_category = current_user.likes_by_category
    @friends = current_user.friends
    @feeds = current_user.feeds
  end

  def thanks
    @customer = params[:customer]
  end

  def login
  end

end
