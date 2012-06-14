class ClassifiedsController < ApplicationController
  def index
    @classifieds = Classified.all
  end

  def show
    @classified = Classified.find(params[:id])
  end

  def new
    @classified = Classified.new
  end

  def edit
    @classified = Classified.find(params[:id])
  end

  def create
    @classified = Classified.new(params[:classified])

    if @classified.save
      redirect_to @classified, notice: 'Classified was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @classified = Classified.find(params[:id])

    if @classified.update_attributes(params[:classified])
      redirect_to @classified, notice: 'Classified was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @classified = Classified.find(params[:id])
    @classified.destroy

    redirect_to classifieds_url, notice: 'Classified was successfully deleted.'
  end
end
