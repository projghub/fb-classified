class CategoriesController < ApplicationController
  def index
    @region = Region.find(params[:region_id])
    @category = Category.find(params[:id])
    @classifieds = Classified.where(category_id: params[:id], region_id: params[:region_id])
  end
end
