class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id=params[:id]
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @id=params[:id]
    Photo.find(@id).destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @id=params[:id]
  end

  def update_row
    @id=params[:id]
    @caption=params["the_caption"]
    @source=params["the_source"]
    p=Photo.find(@id)
    p.caption=@caption
    p.source=@source
    p.save
    redirect_to("http://localhost:3000/photos/"+@id)
  end
end
