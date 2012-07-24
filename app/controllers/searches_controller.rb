class SearchesController < ApplicationController
  LIMIT = 10
  def index    
    unless params[:region_id].blank?
      @classifieds = Classified.search params[:query], :page => params[:page], :with => {:region_id => params[:region_id]}, :per_page => LIMIT
    else
      @classifieds = Classified.search params[:query], :page => params[:page], :per_page => LIMIT
    end
  end
end
