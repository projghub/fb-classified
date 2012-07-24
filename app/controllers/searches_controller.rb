class SearchesController < ApplicationController
  LIMIT = 10
  def index
    puts "========================", params[:region_id]
    @classifieds = Classified.search params[:query], :with => {:region_id => params[:region_id]}
  end
end
