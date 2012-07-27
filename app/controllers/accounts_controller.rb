class AccountsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @classifieds = Classified.where(:user_id => current_user.id)
  end
end
