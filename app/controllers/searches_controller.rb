class SearchesController < ApplicationController
  def index
    @classifieds = Classified.search(params[:query])
  end
end
