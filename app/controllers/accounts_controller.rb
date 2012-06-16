class AccountsController < ApplicationController
  before_filter :require_login

  def index
    @classifieds = Classified.where(:user_id => current_user.id)
  end
end
