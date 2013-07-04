class PhotosController < ApplicationController
  def upload
    @photos = Photo.new
    @collections = Collection.all
  end
  def create
    photostream = current_user.photostream
    @photo = photostream.photos.build(params[:photo])
    if @photo.save
      redirect_to photostreams_path
    else
      render :upload
    end
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @tags = @photo.tags
  end
end
