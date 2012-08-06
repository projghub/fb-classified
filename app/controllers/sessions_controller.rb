class SessionsController < Devise::SessionsController
  def new
     redirect_to facebook_login_path
   end
end