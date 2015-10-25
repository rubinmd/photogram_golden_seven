class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id=params[:id]
  end


end
