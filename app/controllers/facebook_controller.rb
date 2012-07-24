class FacebookController < ApplicationController
  helper_method :logged_in?, :current_user
  
  def index
    @likes_by_category = current_user.likes_by_category
    @friends = current_user.friends
    @feeds = current_user.feeds
  end

  def login  
  end
  
  def callback    
    token = get_access_token(params[:code], params[:signed_request])
    if token
      me = FacebookApi.get_me(token)
      user = User.find_or_create_by_facebook_user_id(me['id'])
      session[:token] = token
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully."
      redirect_to root_path
    else      
       # invalid access token
       redirect_to login_path
    end
  end
  
  def logout
    session[:token] = nil
    session[:user_id] = nil
    flash[:notice] = "Signed out successfully."
    redirect_to root_path
  end
  
  private
  def get_access_token(code, signed_request)
    token = nil
    unless signed_request.blank?
      encoded_envelope = signed_request.split('.', 2)
      envelope = JSON.parse(base64_url_decode(encoded_envelope[1]))
      token = envelope["oauth_token"]
    else
      unless code.blank?
        begin
          access_token = FacebookApi.client.get_token({
            :client_id => FACEBOOK_APP_ID,
            :client_secret => FACEBOOK_SECRET_KEY,
            :redirect_uri => REDIRECT_URI,
            :code => code,
            :parse => :query
          })
          token = access_token.token
        rescue Exception => e
        e.message
        end
      end
    end
  end
end
