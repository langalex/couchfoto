class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new params[:photo]
    if db.save(@photo)
      redirect_to @photo
    else
      render 'new'
    end
  end
  
  def show
    @photo = db.load params[:id]
  end
end