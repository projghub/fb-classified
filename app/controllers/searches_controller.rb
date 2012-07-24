class SearchesController < ApplicationController
  LIMIT = 10
  def index
    @classifieds = Classified.search params[:query], :page => params[:page], :per_page => LIMIT
  end
end
