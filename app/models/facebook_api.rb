class FacebookApi
  class << self
    def client
      OAuth2::Client.new(FACEBOOK_APP_ID, FACEBOOK_SECRET_KEY,{
        :site => 'https://graph.facebook.com',
        :token_url => '/oauth/access_token'
      })
    end
    
    def facebook(token)
      access_token = OAuth2::AccessToken.new(client, token)
      access_token.options[:mode] = :query
      access_token.options[:param_name] = :access_token
      access_token
    end
    
    def facebook_oauth_url      
      client.authorize_url({
        :client_id => FACEBOOK_APP_ID,
        :redirect_uri => REDIRECT_URI,
        :scope => SCOPE,
        :display => "popup",
        :status => "1"
      })
    end
        
    def get_me(token)
      facebook(token).get('/me', {:parse => :json}).parsed
    end
  end
end