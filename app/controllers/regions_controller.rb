class RegionsController < ApplicationController
  def index
    @region = Region.find(params[:id])
  end
end
